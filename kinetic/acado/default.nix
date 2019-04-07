
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, boost }:
buildRosPackage {
  pname = "ros-kinetic-acado";
  version = "1.2.2";

  src = fetchurl {
    url = https://github.com/tud-cor/acado-release/archive/release/kinetic/acado/1.2.2-0.tar.gz;
    sha256 = "f7903bd7d6ae8f11338f8c905ac5f43b4bb1f7bf9863b6daad99ce1b83f9b6bb";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ catkin boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''ACADO Toolkit'';
    #license = lib.licenses.LGPL3;
  };
}
