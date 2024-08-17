{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # CLI
    gdb gef
	rizin

	# GUI
    ghidra
    cutter
  ];
}
