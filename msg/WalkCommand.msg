# Whether to set the walk goal directly (via walk_goal) or send velocities (via cmd_vel)
bool use_goal

# Whether to go a single step only
bool single_step

# Velocities (only linear x and y and angular z are used)
geometry_msgs/Twist cmd_vel

# The goal to go to (only one step as close as possible)
geometry_msgs/Pose walk_goal
