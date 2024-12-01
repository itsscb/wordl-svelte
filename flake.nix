{
  description = "Svelte development environment with SvelteKit and Tailwind CSS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            nodejs
            nodePackages.npm
            nodePackages.svelte-language-server
            nodePackages.typescript-language-server
            nodePackages.tailwindcss
            nodePackages.postcss
            nodePackages.autoprefixer
          ];

          shellHook = ''
            echo "Svelte development environment with SvelteKit and Tailwind CSS activated"
          '';
        };
      }
    );
}
