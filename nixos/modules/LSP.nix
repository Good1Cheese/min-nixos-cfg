# File for installing LSP, formatters, linters and langs stuff

{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Lua
    lua lua-language-server stylua

    # C++
    clang-tools

    # bash, sh
    nodePackages.bash-language-server shfmt shellcheck

    # NIX
    nil nixfmt-classic

    # Ruby
    ruby rubyPackages.solargraph rubyPackages.rexml

	# HTML
	# ast-grep

	# Py
	# ruff python312Packages.python-lsp-server
  ];
}
