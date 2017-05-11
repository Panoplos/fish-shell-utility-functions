function z -d "Quick archive handling..."
	# Usage:
	#
	# z [-opts] <file>.ext
	#   For are extracting any archive with options acceptable to dtrx (see: dtrx --help)
	#   Example: z -vo test.tar.bz2
	#	
	# z [-v] <file/directory> [output]
	#   To compress file/directory, optionally verbosely, to output.tar.bz2
	#   Example: z -v test test2
	#			This will create a tar bz2 compressed archive name test2.tar.bz2
	#
	for i in (seq (count $argv))
		if contains -- (string split -- . $argv[$i])[-1] tar gz bz2 rar zip tgz z7
			dtrx $argv
			return 0
		end
	end
	set v
	if test $argv[1] = -v
		set v -v
		set argv $argv[2..-1]
	end
	if test (count $argv) -eq 1
		tar $v -cjf $argv[1].tar.bz2 $argv[1]
	else
		tar $v -cjf $argv[2].tar.bz2 $argv[1]
	end
end

