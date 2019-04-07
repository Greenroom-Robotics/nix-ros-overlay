
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, robot-state-publisher, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-description";
  version = "2.0.1-r1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator_description/2.0.1-1.tar.gz;
    sha256 = "6b3d3f2a3b7fee138de657deba1388076a8326eb6bf0fc65ee730a8088999f87";
  };

  buildInputs = [ urdf joint-state-publisher xacro robot-state-publisher ];
  propagatedBuildInputs = [ urdf joint-state-publisher xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator 3D model description for visualization and simulation'';
    #license = lib.licenses.Apache 2.0;
  };
}
