
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, pcl, sensor-msgs, catkin, pcl-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pcl-conversions";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/pcl_conversions-release/archive/release/kinetic/pcl_conversions/0.2.1-0.tar.gz;
    sha256 = "6de59a407d381cc9ca253990dfd7cabebee721af1f40952a9d375abb6c943e5a";
  };

  buildInputs = [ cmake-modules pcl-msgs std-msgs pcl sensor-msgs roscpp ];
  propagatedBuildInputs = [ pcl-msgs std-msgs pcl sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    #license = lib.licenses.BSD;
  };
}
