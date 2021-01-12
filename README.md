# xdg-config-home

## Installation

1. Clone:
	```shell
	git clone --recursive https://github.com/SRachamim/xdg-config-home ~/.config
	```

2. Install _Nix_:
	```shell
	curl -L https://nixos.org/nix/install | sh
	```

3. Install _nix-darwin_:
	```shell
	nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer
	./result/bin/darwin-installer
	```

4. Build:
	```shell
	darwin-rebuild switch -I ~/.config/nixpkgs/drawin/configuration.nix`
	```

## Upgrade dependencies

1. Submodules:
	```shell
	git pull --recurse-submodules
	git submodule update --init --recursive
	```

2. _Nix_:
	```shell
	nix-channel --update darwin
	darwin-rebuild changelog
	```

## Rebuild

```shell
darwin-rebuild switch
```
