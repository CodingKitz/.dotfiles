nixos-rebuild build-vm -I nixos-config=./systems/vm/configuration.nix &&
./result/bin/run-nixos-vm &&
rm nixos.qcow2 result
