
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-msgs";
  version = "0.1.6-r1";

  src = fetchurl {
    url = https://gitlab.uni-koblenz.de/robbie/homer_msgs-release/repository/archive.tar.gz?ref=release/kinetic/homer_msgs/0.1.6-1;
    sha256 = "b6e7861f84afa4caf9094f2c48005f74e996ac5d1a6e31085d38246053f7a9cf";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The homer_msgs package'';
    #license = lib.licenses.TODO;
  };
}
