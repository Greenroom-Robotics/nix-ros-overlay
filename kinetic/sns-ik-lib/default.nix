
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, orocos-kdl, catkin, eigen, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-sns-ik-lib";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/RethinkRobotics-release/sns_ik-release/archive/release/kinetic/sns_ik_lib/0.2.3-0.tar.gz;
    sha256 = "ea8bfa9c4d66a8f09f3c8ce6ed2a1ac7673bba0f40873a5490c46c9c4b570723";
  };

  buildInputs = [ kdl-parser orocos-kdl eigen std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Saturation in the Null Space (SNS) Inverse Kinematic Library.
   SNS is a real-time Cartesian IK solver for uses the redundancy
   in the supplied kinematic chain for collision avoidance,
   joint motion optimization, or additional task objectives or
   soft constraints.'';
    #license = lib.licenses.Apache 2.0;
  };
}
