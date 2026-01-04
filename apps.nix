{ config, pkgs, ... }:

{
  # Install firefox.
  programs.firefox.enable = true;

  programs.steam.enable = true;
  
  programs.fish.enable = true;

  nixpkgs.config.allowUnfree = true;

  programs.git = {
    enable = true;
    config = {
      user.name = "Sofia";
      user.email = "sachalouro@icloud.com";
    };
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  python315
  python313Packages.pip
  konsave
  vscode
  jdk25_headless
  maven
  fastfetch
  hyfetch
  nerd-fonts.meslo-lg
  lutris
  kdePackages.filelight
  ];
}