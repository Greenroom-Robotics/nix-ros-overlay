
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, image-recognition-msgs, image-recognition-util, rospy }:
buildRosPackage {
  pname = "ros-kinetic-tensorflow-ros";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/tensorflow_ros/0.0.4-0.tar.gz;
    sha256 = "7d612340a4abff8cd0f826a38f3b6bdba4eae0569288126c146f39c6158a6046";
  };

  buildInputs = [ image-recognition-msgs image-recognition-util rospy ];
  propagatedBuildInputs = [ pythonPackages.numpy image-recognition-msgs image-recognition-util rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tensorflow_ros package'';
    #license = lib.licenses.TODO;
  };
}
