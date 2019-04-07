
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-resources, catkin, rviz, robot-state-publisher, roslaunch, joint-state-publisher, abb-driver }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb5400-support";
  version = "1.3.0-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb5400_support/1.3.0-1.tar.gz;
    sha256 = "a510749f6ad072d9eb120978f8a78ca37bca1eba3f87dbd5fb0b22f1c700a971";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-resources rviz robot-state-publisher joint-state-publisher abb-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the ABB IRB 5400 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 5400 manipulators. This currently includes the base model.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in
      the ABB data sheets.  All URDFs / XACROs are based on the
      default motion and joint velocity limits, unless noted otherwise (ie:
      no support for high speed joints, extended / limited motion ranges or
      other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>'';
    #license = lib.licenses.Apache2;
  };
}
