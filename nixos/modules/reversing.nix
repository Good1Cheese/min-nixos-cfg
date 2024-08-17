{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gdb gef
	radare2 iaito
	# rizin cutter
    (rizin.withPlugins (ps: with ps; [ rz-ghidra ]))
    (cutter.withPlugins (ps: with ps; [ rz-ghidra ]))
    ghidra
  ];
}
