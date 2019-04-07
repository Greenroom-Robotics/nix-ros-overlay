
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-indoor-positioning";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/metratec/indoor_positioning-release/archive/release/kinetic/indoor_positioning/1.1.0-0.tar.gz;
    sha256 = "cc8fde923b77fbd3e67509827ddd6f2c0324af1b85d9f8ce116ae8ac802cc419";
  };

  buildInputs = [ pythonPackages.numpy message-generation pythonPackages.pyserial rospy std-msgs roscpp pythonPackages.scipy pythonPackages.pyyaml ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.pyserial message-runtime rospy std-msgs roscpp pythonPackages.scipy pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a ROS package for the metraTec Indoor Positioning System.
    You can use the regular IPS for zone location of your robot
    or the IPS+ products for 3D-position-estimation using UWB ranging.'';
    #license = lib.licenses.BSD 2-Clause License;
  };
}
