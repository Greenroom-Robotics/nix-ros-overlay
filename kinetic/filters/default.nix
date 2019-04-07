
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, rosconsole, catkin, roscpp, rostest, roslib }:
buildRosPackage {
  pname = "ros-kinetic-filters";
  version = "1.7.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/filters-release/archive/release/kinetic/filters/1.7.5-0.tar.gz;
    sha256 = "e71a4de4b78ed4f14b4ef07a599f1b82c2e71e429ec41fdf4e2e36d160c7e5e2";
  };

  buildInputs = [ rostest roslib rosconsole pluginlib roscpp ];
  propagatedBuildInputs = [ rosconsole roslib pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides a standardized interface for processing data as a sequence 
    of filters.  This package contains a base class upon which to build specific implementations
    as well as an interface which dynamically loads filters based on runtime parameters.'';
    #license = lib.licenses.BSD;
  };
}
