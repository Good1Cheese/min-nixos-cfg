# File for installing LSP, formatters, linters and langs stuff

{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    espeak-classic

    # Pascal
    lazarus-qt
    fpc
    libqt5pas

    # Docker
    dockerfile-language-server-nodejs

    # C#
    omnisharp-roslyn
    dotnet-sdk

    # Java
    jdk
    gradle
    maven
    spring-boot-cli
    jdt-language-server
    jetbrains.idea-community
    tiled
    libsForQt5.qt5.qtwayland

    # GDScript
    godot_4
    gdtoolkit_4

    # Python
    ruff
    python312
    python312Packages.pip
    python312Packages.jedi
    python312Packages.python-lsp-server
    python312Packages.adblock 

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
