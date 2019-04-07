
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, sensor-msgs, catkin, qt5, eigen, std-msgs, roscpp, open-manipulator-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-control-gui";
  version = "2.0.1-r1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator_control_gui/2.0.1-1.tar.gz;
    sha256 = "5a8c856cb265e7accc502383cd29d18b4aa42dcbdbf8eb07686d536531c0c7f1";
  };

  buildInputs = [ cmake-modules open-manipulator-msgs eigen std-msgs sensor-msgs roscpp qt5.qtbase ];
  propagatedBuildInputs = [ cmake-modules open-manipulator-msgs eigen std-msgs sensor-msgs roscpp qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator GUI control package based on QT'';
    #license = lib.licenses.Apache 2.0;
  };
}
