
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-std-msgs, rtt-geometry-msgs, catkin, rtt-roscomm, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-visualization-msgs";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_visualization_msgs/2.9.1-0.tar.gz;
    sha256 = "e24ecfe1c4aed4f9234bc44b1c21e5443be28537d57ba4ba00fbe0d629d0bca2";
  };

  buildInputs = [ rtt-roscomm rtt-geometry-msgs visualization-msgs rtt-std-msgs ];
  propagatedBuildInputs = [ rtt-roscomm rtt-geometry-msgs visualization-msgs rtt-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS visualization_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/visualization_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    #license = lib.licenses.BSD;
  };
}
