
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multimaster-msgs-fkie, rosgraph, rospy, master-discovery-fkie, roslib }:
buildRosPackage {
  pname = "ros-kinetic-master-sync-fkie";
  version = "0.8.11";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/master_sync_fkie/0.8.11-0.tar.gz;
    sha256 = "fed364d0d45f3decfc995cf31f2e5e944c6311ce82095c0ad117bd296b94d0cf";
  };

  buildInputs = [ master-discovery-fkie multimaster-msgs-fkie ];
  propagatedBuildInputs = [ roslib rosgraph rospy master-discovery-fkie multimaster-msgs-fkie ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Synchronize the local ROS master to the remote masters 
     discovered by master_discovery_fkie node. The registration
     of topics and services is only perform by local ROS master.'';
    #license = lib.licenses.BSD;
  };
}
