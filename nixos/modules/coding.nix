# File for installing LSP, formatters, linters and langs stuff

{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    python3
    godot_4

    # Lua
    lua51Packages.lua
    luajitPackages.luarocks
    lua-language-server
    stylua

    # C/C++
    clang
    glibc
    clang-tools
    # criterion

    # ASM
    nasm
    asm-lsp

    # bash, sh
    nodePackages.bash-language-server
    shfmt
    shellcheck

    # NIX
    nil
    nixfmt-classic

    # Ruby
    ruby
    rubyPackages.solargraph
    rubyPackages.rexml
  ];
}
