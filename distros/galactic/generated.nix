
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

self: super: {

 demo-nodes-cpp = self.callPackage ./demo-nodes-cpp {};

 demo-nodes-cpp-native = self.callPackage ./demo-nodes-cpp-native {};

 demo-nodes-py = self.callPackage ./demo-nodes-py {};

 dwb-msgs = self.callPackage ./dwb-msgs {};

}
