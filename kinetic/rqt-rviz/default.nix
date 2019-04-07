
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, catkin, rqt-gui, rviz, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-kinetic-rqt-rviz";
  version = "0.5.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_rviz-release/archive/release/kinetic/rqt_rviz/0.5.10-0.tar.gz;
    sha256 = "6bb3779b59c260fefd6fad72e3e47253d93580d27538558a3e0dd6bfc49144b4";
  };

  buildInputs = [ rviz pluginlib boost rqt-gui-cpp rqt-gui ];
  propagatedBuildInputs = [ rviz pluginlib boost rqt-gui-cpp rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_rviz provides a GUI plugin embedding <a href="http://www.ros.org/wiki/rviz">RViz</a>.
    Note that this rqt plugin does NOT supersede RViz but depends on it.'';
    #license = lib.licenses.BSD;
  };
}
