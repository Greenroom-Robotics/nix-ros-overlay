
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, zeroconf-avahi, catkin, avahi }:
buildRosPackage {
  pname = "ros-kinetic-zeroconf-avahi-demos";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/zeroconf_avahi_suite-release/archive/release/kinetic/zeroconf_avahi_demos/0.2.3-0.tar.gz;
    sha256 = "455fcbd44c676d4f8927b48a783b53ddd14aea5473b7a907b411ac91bb497000";
  };

  buildInputs = [ zeroconf-avahi ];
  propagatedBuildInputs = [ zeroconf-avahi avahi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Several demos and launch-tests for the avahi based zero-configuration.'';
    #license = lib.licenses.BSD;
  };
}
