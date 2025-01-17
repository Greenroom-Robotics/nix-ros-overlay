
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, image-transport, pluginlib, qt5, rclcpp, ros-image-to-qimage, rqt-gui-cpp, rqt-image-overlay-layer, std-msgs, theora-image-transport }:
buildRosPackage {
  pname = "ros-galactic-rqt-image-overlay";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/galactic/rqt_image_overlay/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "b6294f9c8499d264f7fc8eafe337b19fda0a38c256377dfee617beb07779acfb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common std-msgs theora-image-transport ];
  propagatedBuildInputs = [ image-transport pluginlib qt5.qtbase rclcpp ros-image-to-qimage rqt-gui-cpp rqt-image-overlay-layer ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An rqt plugin to display overlays for custom msgs on an image using plugins.'';
    license = with lib.licenses; [ asl20 ];
  };
}
