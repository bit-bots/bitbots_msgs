# This message is used for communication between the head behavior and visual compass.
# While game initiating the behavior tells the compass when to take frames from camera stream as ground truth.
# Between adjusting the head orientation should be a fixed time interval (i.e. 0.5 sec), to guarantee that visual compass has finished processing the image frame. # TODO is this necessary? wait for response of compass?
# In binary mode this should be published while the camera is initially pointed at the opponents goal line, then to the own goal line.
# In multiple mode a 360° field of view is needed. Therefore initially the head should be pointed at the opponents goal line, then a series of triggering the visual compass and adjusting the head position by an offset starts.

std_msgs/Header header

# Count of ground truth
# In binary mode: 0 or 1
# In multiple mode: between 0 and maxGroundTruthCount
uint8 groundTruthCount

# 0 points to the opponent goal line, 3.14 to the own goal line
float32 orientation