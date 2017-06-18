function sedr -d "Perform sed replacement on all files in dir (default: CWD) and subdirs"
	set idx 1
	set dir (pwd)
	if test (count $argv) -gt 1
		set dir $argv[1]
		set idx (math "$idx + 1") > /dev/null
	end
	command find $dir -type f -exec sed -i -E $argv[$idx] \{\} \;
end
