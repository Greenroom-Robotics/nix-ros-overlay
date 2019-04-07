
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, boost, catkin, rostime, calibration-msgs }:
buildRosPackage {
  pname = "ros-kinetic-settlerlib";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/kinetic/settlerlib/0.10.14-0.tar.gz;
    sha256 = "61737cc215bdf01acfbee2d2071761b241befb7d7ceaac78ebae8588a5442aa7";
  };

  buildInputs = [ boost rostime rosconsole calibration-msgs ];
  propagatedBuildInputs = [ boost rostime rosconsole calibration-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines helper functions and routines that greatly help when trying to create a settler
    for a specific sensor channel. This package is experimental and unstable.
    Expect its APIs to change.'';
    #license = lib.licenses.BSD;
  };
}
