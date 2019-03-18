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
threshold = [90, 99, -20, -6, 20, 60]

SerialOperator   = 0x00
M_SerialHeader   = 0xFB    #11111011
M_MicroStepFlug  = 0x80    #1000
M_LeftFlug       = 0x00    #0000
M_RightFlug      = 0x40    #0100
M_FireFlug       = 0x20    #0010
M_PassFlug       = 0x10    #0001

PixPerDeg = 57.0/40.0
DegofServo = 0x5A    # 90
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

print("t[0] = %d, t[1] = %d, t[2] = %d, t[3] = %d, t[4] = %d, t[5] = %d" % (threshold[0], threshold[1], threshold[2], threshold[3], threshold[4], threshold[5]))
print("Tracking colors...")

while(True):
    clock.tick()
    Rled.off()
    Gled.off()
    Bled.on()
    img = sensor.snapshot()
    for blob in img.find_blobs([threshold], pixels_threshold=10, area_threshold=10, merge=True, margin=10):
        counter = 0
        OBJ = []
        counter = counter + 1
        img.draw_rectangle(blob.rect())
        img.draw_cross(blob.cx(), blob.cy())
        print("1")
        print("%x, %d, %x" %(M_SerialHeader, int(DegofServo), SerialOperator))
        print("x = %d, y = %d" % (blob.cx(), blob.cy()))
        OBJ.append(blob)

    if serial.readchar() != -1:
    #if True:
        print("2")
        lateCounter = lateCounter + 1
        Rled.on()
        Gled.on()
        if lateCounter % 15 == 0:
            print("3")
            if lateCounter > 1000:
                print("4")
                lateCounter = 0
            #print("%d" %(lateCounter))
            if counter > 0:
                print("5")
                print("There is a Colomn Target !")
                if fixcount < 20:   # max count of fix of deg is 40.
                    print("6")
                    if 159 < OBJ[0].cx() < 161:    # threshold of err of cx
                        print("7")
                        # Fire !
                        print("Fire !")
                        SerialOperator = SerialOperator | M_FireFlug
                        serial.writechar(M_SerialHeader)
                        serial.writechar(int(DegofServo))
                        serial.writechar(SerialOperator)
                        print("%x, %d, %x, %d" %(M_SerialHeader, int(DegofServo), SerialOperator, OBJ[0].cx()))
                        completeflug = 1
                        fixcount = 0
                        while(serial.any() != 0):
                            verify = serial.readchar()
                        #machine.reset()
                    else:
                        print("mofu")
                        DegofServo = DegofServo - 0.25 * ( (160 - OBJ[0].cx()) / PixPerDeg )
                        SerialOperator = 0x00
                        serial.writechar(M_SerialHeader)
                        serial.writechar(int(DegofServo))
                        serial.writechar(0x00)
                        print("%x, %d, %x, %d" %(M_SerialHeader, int(DegofServo), 0x00, OBJ[0].cx()))
                        fixcount = fixcount + 1
                        while(serial.any() != 0):
                            verify = serial.readchar()
                else:
                    # Fire !
                    print("Fire Aki !")
                    SerialOperator = SerialOperator | M_FireFlug
                    serial.writechar(M_SerialHeader)
                    serial.writechar(int(DegofServo))
                    serial.writechar(SerialOperator)
                    print("%x, %d, %x, %d" %(M_SerialHeader, int(DegofServo), SerialOperator, OBJ[0].cx()))
                    completeflug = 1
                    fixcount = 0
                    while(serial.any() != 0):
                        verify = serial.readchar()
                    #machine.reset()
            else:
                print("not Found")
                # Fire !
                SerialOperator = SerialOperator | M_FireFlug
                serial.writechar(M_SerialHeader)
                serial.writechar(0x5A)
                serial.writechar(SerialOperator)
                print("%x, %d, %x, %d" %(M_SerialHeader, int(DegofServo), SerialOperator, OBJ[0].cx()))
                completeflug = 1
                fixcount = 0
                while(serial.any() != 0):
                    verify = serial.readchar()
                #machine.reset()
