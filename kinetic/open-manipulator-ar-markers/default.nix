
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar, image-transport, catkin, ar-track-alvar-msgs, image-proc }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-ar-markers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator_perceptions-release/archive/release/kinetic/open_manipulator_ar_markers/1.0.0-1.tar.gz;
    sha256 = "4885e8982d1c719369b36db057e8040802d621b4ff437fae69a488ae31ec0bc3";
  };

  buildInputs = [ ar-track-alvar image-transport image-proc ar-track-alvar-msgs ];
  propagatedBuildInputs = [ ar-track-alvar image-transport image-proc ar-track-alvar-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''To find AR marker, it depends ar_track_alvar packages'';
    #license = lib.licenses.Apache 2.0;
  };
}
