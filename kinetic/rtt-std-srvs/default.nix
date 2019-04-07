
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-roscomm, std-srvs, catkin, genmsg }:
buildRosPackage {
  pname = "ros-kinetic-rtt-std-srvs";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_std_srvs/2.9.1-0.tar.gz;
    sha256 = "e03a346d0b2763bc9c21091e164b061382ab961ce0638b18f7922e9f93a56c86";
  };

  buildInputs = [ rtt-roscomm genmsg std-srvs ];
  propagatedBuildInputs = [ rtt-roscomm genmsg std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS std_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/std_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    #license = lib.licenses.BSD;
  };
}
