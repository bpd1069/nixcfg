# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "usb_storage" "sd_mod" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/0e1b9d1e-85c5-466a-8796-e01f615ead67";
      fsType = "btrfs";
      options = "noatime,ssd,autodefrag,compress=zlib,space_cache,degraded";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/2da4f944-c10e-4a80-97d5-8968bccef212";
      fsType = "ext4";
      options = "noatime";
    };

  fileSystems."/home" =
    { device = "/dev/chrome/home";
      fsType = "btrfs";
      options = "noatime,ssd,autodefrag,compress=zlib,space_cache,degraded";
    };

  swapDevices =
    [ { device = "/dev/disk/by-label/PIXEL_SWAP"; } ];

  nix.maxJobs = 4;
}
