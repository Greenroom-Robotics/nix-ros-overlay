
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin-pip, catkin, pythonPackages, marshmallow, webtest }:
buildRosPackage {
  pname = "ros-kinetic-webargs";
  version = "1.5.3-r1";

  src = fetchurl {
    url = https://github.com/asmodehn/webargs-rosrelease/archive/release/kinetic/webargs/1.5.3-1.tar.gz;
    sha256 = "d452af802ac66a0791c25c678d45386ffc72c91ee70db7ee44ec6dae0768fbbd";
  };

  buildInputs = [ marshmallow catkin-pip ];
  checkInputs = [ webtest pythonPackages.mock pythonPackages.pytest pythonPackages.werkzeug pythonPackages.flask pythonPackages.tornado ];
  propagatedBuildInputs = [ marshmallow ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A friendly library for parsing HTTP request arguments, with built-in support for popular web frameworks, including Flask, Django, Bottle, Tornado, Pyramid, webapp2, Falcon, and aiohttp.'';
    #license = lib.licenses.BSD;
  };
}
