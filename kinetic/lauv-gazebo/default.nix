
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, uuv-control-utils, lauv-description, lauv-control }:
buildRosPackage {
  pname = "ros-kinetic-lauv-gazebo";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/kinetic/lauv_gazebo/0.1.6-0.tar.gz;
    sha256 = "dde6059edf49f860a8ece6721ff6635ee996b2b875b60f2301241ee5d0edded3";
  };

  propagatedBuildInputs = [ rosbag lauv-description uuv-control-utils lauv-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Sample launch files to start a simulated LAUV in Gazebo.'';
    #license = lib.licenses.Apache-2.0;
  };
}