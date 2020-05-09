{ buildGoModule }:

buildGoModule rec {
  pname = "go-nix-example";
  version = "0.0.1";

  src = ./.;
  modSha256 = "09p5c2wvjgwcvy40m7hgarwldgga0cf5ym39sshvvhfkjx2nvngd";
  subPackages = [ "." ];
}
