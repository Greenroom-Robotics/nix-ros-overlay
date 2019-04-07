
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, geometry-msgs, catkin, roscpp, ecl-build, ecl-exceptions, ecl-linear-algebra, tf, ecl-config }:
buildRosPackage {
  pname = "ros-kinetic-yocs-math-toolkit";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_math_toolkit/0.8.2-0.tar.gz;
    sha256 = "22c8cee256bee0006130e6ee0ca220a336a609e045d48b56df22163d79320e91";
  };

  buildInputs = [ ecl-exceptions ecl-formatters roscpp ecl-linear-algebra geometry-msgs tf ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-exceptions ecl-formatters roscpp ecl-linear-algebra geometry-msgs tf ecl-config ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Math toolkit for Yujin open control system. This package is intended to contain common use functions,
    mostly for simple mathematics but also for tf-related conversions.
    By no means it pretends to be an efficient and robust, widely used math library, but a play ground where
    to put common code that is typically repeated in many robot control programs.'';
    #license = lib.licenses.BSD;
  };
}
