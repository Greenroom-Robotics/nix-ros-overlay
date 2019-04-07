
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-grizzly-msgs";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/grizzly-release/archive/release/kinetic/grizzly_msgs/0.4.2-0.tar.gz;
    sha256 = "a924bd27ee86ebecbc540a12e8b0afb25d44728dc02571b9ee634daa62058172";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for Grizzly.'';
    #license = lib.licenses.BSD;
  };
}
