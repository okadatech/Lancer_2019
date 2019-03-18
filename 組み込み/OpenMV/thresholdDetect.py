# Automatic RGB565 Color Tracking Example
#
# This example shows off single color automatic RGB565 color tracking using the OpenMV Cam.

import sensor, image, time
print("Letting auto algorithms run. Don't put anything in front of the camera!")

sensor.reset()
sensor.set_pixformat(sensor.RGB565)
sensor.set_framesize(sensor.QVGA)
sensor.skip_frames(time = 2000)
sensor.set_auto_gain(False) # must be turned off for color tracking
sensor.set_auto_whitebal(False) # must be turned off for color tracking
clock = time.clock()

# color definition
red = (0xFF, 0x00, 0x00)
green = (0x00, 0xFF, 0x00)
blue = (0x00, 0x00, 0xFF)
aqua = (0x00, 0xFF, 0xFF)
purple = (0xFF, 0x00, 0xFF)
yellow = (0xFF, 0xFF, 0x00)
white = (0xFF, 0xFF, 0xFF)
colors = (red, green, blue, aqua, purple, yellow, white)

PixperDeg = 60.0/40.0

# Capture the color thresholds for whatever was in the center of the image.
r = [(320//2)-(50//2), (240//2)-(50//2), 50, 50] # 50x50 center of QVGA.

print("Auto algorithms done. Hold the object you want to track in front of the camera in the box.")
print("MAKE SURE THE COLOR OF THE OBJECT YOU WANT TO TRACK IS FULLY ENCLOSED BY THE BOX!")
for i in range(60):
    img = sensor.snapshot()
    img.draw_rectangle(r)

print("Learning thresholds...")
threshold = [50, 50, 0, 0, 0, 0] # Middle L, A, B values.
for i in range(60):
    img = sensor.snapshot()
    hist = img.get_histogram(roi=r)
    lo = hist.get_percentile(0.01) # Get the CDF of the histogram at the 1% range (ADJUST AS NECESSARY)!
    hi = hist.get_percentile(0.99) # Get the CDF of the histogram at the 99% range (ADJUST AS NECESSARY)!
    # Average in percentile values.
    threshold[0] = (threshold[0] + lo.l_value()) // 2
    threshold[1] = (threshold[1] + hi.l_value()) // 2
    threshold[2] = (threshold[2] + lo.a_value()) // 2
    threshold[3] = (threshold[3] + hi.a_value()) // 2
    threshold[4] = (threshold[4] + lo.b_value()) // 2
    threshold[5] = (threshold[5] + hi.b_value()) // 2
    for blob in img.find_blobs([threshold], pixels_threshold=100, area_threshold=100, merge=True, margin=10):
        img.draw_rectangle(blob.rect())
        img.draw_cross(blob.cx(), blob.cy())
        img.draw_rectangle(r)

print("Thresholds learned...")
print("t[0] = %d, t[1] = %d, t[2] = %d, t[3] = %d, t[4] = %d, t[5] = %d" % (threshold[0], threshold[1], threshold[2], threshold[3], threshold[4], threshold[5]))
print("Tracking colors...")

counter = 0
while(True):
    clock.tick()
    img = sensor.snapshot()
    counter = 0
    for blob in img.find_blobs([threshold], pixels_threshold=100, area_threshold=100, merge=True, margin=10):
        counter = counter + 1
        if counter < 8:
            img.draw_rectangle(blob.rect(), colors[counter - 1])
            img.draw_cross(blob.cx(), blob.cy(), colors[counter - 1])
            print("[%d]: cx = %d, cy = %d, w = %d, h = %d" % (counter, blob.cx(), blob.cy(), blob.w(), blob.h()))
        else:
            img.draw_rectangle(blob.rect())
            img.draw_cross(blob.cx(), blob.cy())
            print("[%d]: cx = %d, cy = %d, w = %d, h = %d" % (counter, blob.cx(), blob.cy(), blob.w(), blob.h()))

    #print(clock.fps())
