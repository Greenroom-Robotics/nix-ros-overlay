# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    lib = super.lib // import ../lib { inherit lib self; };

    galactic = import ./distro-overlay.nix {
      distro = "galactic";
      python = self.python3;
    } self super;
  };
}
