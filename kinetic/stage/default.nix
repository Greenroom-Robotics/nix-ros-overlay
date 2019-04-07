
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtk2, catkin, libtool, pkg-config, libGL, libjpeg, libGLU, fltk, cmake }:
buildRosPackage {
  pname = "ros-kinetic-stage";
  version = "4.1.1-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/stage-release/archive/release/kinetic/stage/4.1.1-1.tar.gz;
    sha256 = "7fecacb03492a12cc0aac09a78065df784017702c431af4f12fbe4ef6165057f";
  };

  buildInputs = [ libjpeg fltk libGLU gtk2 libGL libtool ];
  propagatedBuildInputs = [ libGL libjpeg fltk libGLU gtk2 catkin ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''Mobile robot simulator http://rtv.github.com/Stage'';
    #license = lib.licenses.GPL;
  };
}
