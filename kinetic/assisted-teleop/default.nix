
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, filters, pluginlib, base-local-planner, tf, sensor-msgs, catkin, message-filters, move-base-msgs, roslib, actionlib, angles, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-assisted-teleop";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/assisted_teleop/0.2.1-0.tar.gz;
    sha256 = "11de53b07b6815ab2d93730acbc8461d7a91bc74b5f153ed9992ebc6da9cf9d5";
  };

  buildInputs = [ costmap-2d filters pluginlib base-local-planner tf sensor-msgs message-filters roscpp move-base-msgs actionlib angles roslib geometry-msgs eigen ];
  propagatedBuildInputs = [ costmap-2d filters pluginlib base-local-planner tf sensor-msgs message-filters roscpp move-base-msgs actionlib angles roslib geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The assisted_teleop node subscribes to a desired trajectory topic
    (geometry_msgs/Twist) and uses TrajectoryPlannerROS to find a valid
    trajectory close to the desired trajectory before republishing. Useful for
    filtering teleop commands while avoiding obstacles. This package also
    contains LaserScanMaxRangeFilter, which is a LaserScan filter plugin that
    takes max range values in a scan and turns them into valid values that are
    slightly less than max range.'';
    #license = lib.licenses.BSD;
  };
}
