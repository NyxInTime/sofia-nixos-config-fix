{
	description = "fixing flake";
	inputs = {
		nixpkgs.url = "nixpkgs/nixos-unstable";
	};
	outputs = {
		self, nixpkgs, ...}@inputs:
		{
			nixosConfigurations.rubik = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
				modules = [
					./configuration.nix
				];
			};
		};
	}
