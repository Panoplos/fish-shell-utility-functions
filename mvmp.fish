function mvmp -d "Move item to directory, creating parents directories."
	if test ! -e $argv[1]
		echo Error: $argv[1] does not exist!
		return -1
	end
	if test -e $argv[2]
		if test -d $argv[2]
			echo Moving $argv[1] to existing directory $argv[2]/
			mv $argv[1] $argv[2]/
		else
			echo Error: $argv[2] exists and is not a directory!
			return -1
		end
	else
		echo Moving $argv[1] to new directory \(with parents\) $argv[2]/
		mkdir -p $argv[2] ; mv $argv[1] $argv[2]/
	end
end

