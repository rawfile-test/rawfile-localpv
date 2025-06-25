let
  sources = import ../../../nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in
pkgs.mkShell {
  name = "rawfile-helm-shell";

  buildInputs = with pkgs; [
    kubectl
    kubernetes-helm-wrapped
    helm-docs
  ];
}
