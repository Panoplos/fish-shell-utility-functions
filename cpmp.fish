function cpmp -d 'Copy item to directory, creating parent directories as needed.'
	if test ! -e $argv[1]
		echo Error: $argv[1] does not exist!
		return -1
	end
	if test -e $argv[2]
		if test -d $argv[2]
			echo Copying $argv[1] to existing directory $argv[2]/
			cp -r $argv[1] $argv[2]/
		else
			echo Error: $argv[2] exists and is not a directory!
			return -1
		end
	else
		echo Copying $argv[1] to new directory \(with parents\) $argv[2]/
		mkdir -p $argv[2] ; cp -r $argv[1] $argv[2]/
	end
end

