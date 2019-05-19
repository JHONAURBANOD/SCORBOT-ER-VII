/**
**  Simple ROS Node
**/
#include <ros/ros.h>
//cambiar tipo de mensaje    ...//
#include <std_msgs/Float64MultiArray.h>

class Localizer
{
public:
    Localizer(ros::NodeHandle& nh)
    {
        ar_sub_ = nh.subscribe<std_msgs::Float64MultiArray>("udp_robotino_output", 1,
        &Localizer::visionCallback, this);
    }

    void visionCallback(const std_msgs::Float64MultiArrayConstPtr& msg)
    {
        last_msg_ = msg;
        ROS_INFO_STREAM(last_msg_->data[1]);

    }

    ros::Subscriber ar_sub_;
    std_msgs::Float64MultiArrayConstPtr last_msg_;
};



int main(int argc, char* argv[])
{
    // This must be called before anything else ROS-related
    ros::init(argc, argv, "read_node");

    // Create a ROS node handle
    ros::NodeHandle nh;

    // The Localizer class provides this node's ROS interfaces
    Localizer localizer(nh);

    ROS_INFO("Read node starting");

    // Don't exit the program.
    ros::spin();
}
