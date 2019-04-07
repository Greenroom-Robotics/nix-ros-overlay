
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-diagnostic-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/kinetic/diagnostic_msgs/1.12.7-0.tar.gz;
    sha256 = "dfcf6abd7af45818ff4f759e8c2021cea091e836a94272faeb3172abb77df21a";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds the diagnostic messages which provide the
    standardized interface for the diagnostic and runtime monitoring
    systems in ROS. These messages are currently used by
    the <a href="http://wiki.ros.org/diagnostics">diagnostics</a>
    Stack, which provides libraries for simple ways to set and access
    the messages, as well as automated ways to process the diagnostic
    data.

    These messages are used for long term logging and will not be
    changed unless there is a very important reason.'';
    #license = lib.licenses.BSD;
  };
}
