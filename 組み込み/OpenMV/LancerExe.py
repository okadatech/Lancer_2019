import sensor, image, time, pyb

sensor.reset()
sensor.set_pixformat(sensor.RGB565)
sensor.set_framesize(sensor.QVGA) # 320x240
sensor.skip_frames(time = 2000)
sensor.set_auto_gain(False) # must be turned off for color tracking
sensor.set_auto_whitebal(False) # must be turned off for color tracking

clock = time.clock()
serial = pyb.UART(3, 115200, timeout_char =1 , timeout= 1 )
Rled = pyb.LED(1)
Gled = pyb.LED(2)
Bled = pyb.LED(3)

#Enter the threshold detected by thresholdDetect.py, LAB#
threshold = [90, 100, -30, 0, 17, 43]

SerialOperator   = 0x00
M_SerialHeader   = 0xFB    #11111011
M_MicroStepFlug  = 0x80    #1000
M_LeftFlug       = 0x00    #0000
M_RightFlug      = 0x40    #0100
M_FireFlug       = 0x20    #0010
M_PassFlug       = 0x10    #0001

PixPerDeg = 57.0/40.0
DegofServo = 90.0
fixcount = 0
microstepflug = 0
microstepseq = 0
completeflug = 0
tim2flug = 0
tim3flug = 0
tim4flug = 0
leftflug = 0
rightflug =0
microcounter = 0
OBJ = list()
verify = 0
lateCounter = 0
err = 0.0
errIntegral = 0.0
CX = 0
bufCX = [0, 0, 240]
sortedCX = list()

red = (0xFF, 0x00, 0x00)

print("t[0] = %d, t[1] = %d, t[2] = %d, t[3] = %d, t[4] = %d, t[5] = %d" % (threshold[0], threshold[1], threshold[2], threshold[3], threshold[4], threshold[5]))
print("Tracking colors...")

while(True):
    clock.tick()
    Rled.off()
    Gled.off()
    Bled.on()
    img = sensor.snapshot()
    counter = 0
    for blob in img.find_blobs([threshold], pixels_threshold=10, area_threshold=10, merge=True, margin=10):
        OBJ = []
        counter += 1
        CX = blob.x() + blob.w()/2
        CX = (CX + blob.cx()) / 2
        bufCX[2] = bufCX[1]
        bufCX[1] = bufCX[0]
        bufCX[0] = CX
        sortedCX = sorted(bufCX)
        CX = sortedCX[1]
        img.draw_rectangle(blob.rect(), red)
        img.draw_cross(round(CX), blob.cy(), red)
        #print("1")
        #print("%x, %d, %x" %(M_SerialHeader, int(DegofServo), SerialOperator))
        #print("x = %d, y = %d" % (blob.cx(), blob.cy()))
        OBJ.append(blob)

    if completeflug == 1:
        errIntegral = 0
        completeflug = 0

    if serial.readchar() != -1:
    #if True:
        #print("2")
        lateCounter += 1
        Rled.on()
        Gled.on()
        if lateCounter % 15 == 0:
            #print("3")
            if lateCounter > 1000:
                #print("4")
                lateCounter = 0
            if counter > 0:
                #print("5")
                #print("There is a Colomn Target !")
                if fixcount < 40:   # max count of fix of deg is 40.
                    #print("6")
                    if 159.4 < CX < 160.6:    # threshold of err of cx
                        #print("7")
                        # Fire !
                        print("Fire !")
                        SerialOperator = SerialOperator | M_FireFlug
                        serial.writechar(M_SerialHeader)
                        serial.writechar(round(DegofServo))
                        serial.writechar(SerialOperator)
                        print("%d,%f,%f,%f" %(fixcount, CX, DegofServo, err))
                        #print("%x, %d, %x, %d" %(M_SerialHeader, int(DegofServo), SerialOperator, OBJ[0].cx()))
                        completeflug = 1
                        fixcount = 0
                        while(serial.any() != 0):
                            verify = serial.readchar()
                    else:
                        #print("mofu")
                        err = (160 - CX) / PixPerDeg
                        errIntegral += err
                        DegofServo = DegofServo - ( 0.3*err + 0.02*errIntegral )
                        SerialOperator = 0x00
                        serial.writechar(M_SerialHeader)
                        serial.writechar(round(DegofServo))
                        serial.writechar(SerialOperator)
                        print("%d,%f,%f,%f" %(fixcount, CX, DegofServo, err))
                        #print("%x, %d, %x, %d" %(M_SerialHeader, int(DegofServo), SerialOperator, OBJ[0].cx()))
                        fixcount += 1
                        while(serial.any() != 0):
                            verify = serial.readchar()
                else:
                    # Fire !
                    #print("Fire Aki !")
                    SerialOperator = SerialOperator | M_FireFlug
                    serial.writechar(M_SerialHeader)
                    serial.writechar(round(DegofServo))
                    serial.writechar(SerialOperator)
                    #print("%x, %d, %x, %d" %(M_SerialHeader, int(DegofServo), SerialOperator, OBJ[0].cx()))
                    completeflug = 1
                    fixcount = 0
                    while(serial.any() != 0):
                        verify = serial.readchar()
            else:
                #print("not Found")
                # Fire !
                SerialOperator = SerialOperator | M_FireFlug
                serial.writechar(M_SerialHeader)
                serial.writechar(0x5A)
                serial.writechar(SerialOperator)
                #print("%x, %d, %x, %d" %(M_SerialHeader, int(DegofServo), SerialOperator, OBJ[0].cx()))
                completeflug = 1
                fixcount = 0
                while(serial.any() != 0):
                    verify = serial.readchar()
