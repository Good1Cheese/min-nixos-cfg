# File for installing LSP, formatters, linters and langs stuff

{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    lazarus-qt
    fpc
    libqt5pas

    # Java
    jdk
    maven
    nodejs_22
    jdt-language-server

    # GDScript
    godot_4
    gdtoolkit_4

    # Python
    python3
    ruff
    python312Packages.pip
    python312Packages.jedi
    python312Packages.python-lsp-server

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
