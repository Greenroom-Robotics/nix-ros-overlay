
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-motors";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_motors/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "87d56112414a32f4e10c118e46ffbed311366c780604733c960d3d30f46a8cd6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Motor devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
