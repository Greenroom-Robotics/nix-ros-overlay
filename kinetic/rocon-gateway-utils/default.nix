
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-python-comms, catkin, gateway-msgs, rosservice, rostest, rocon-console, rosgraph, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rocon-gateway-utils";
  version = "0.8.1-r2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_gateway_utils/0.8.1-2.tar.gz;
    sha256 = "a9114e4cca859099aef130642d566207f6f75f5192fa3187f7d12c2c958c61b5";
  };

  buildInputs = [ rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rocon-console rosgraph rocon-python-comms gateway-msgs rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities for gateway users (avoids large dependency requirements).'';
    #license = lib.licenses.BSD;
  };
}
