
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, roslaunch, joint-state-publisher, ridgeback-description }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-viz";
  version = "0.1.1-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/ridgeback_desktop-release/archive/release/melodic/ridgeback_viz/0.1.1-1.tar.gz;
    sha256 = "14418566a065e1a70a90730c24796c9bc51d78f797302f8fecbafd525be7483f";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ rviz joint-state-publisher ridgeback-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Ridgeback.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}