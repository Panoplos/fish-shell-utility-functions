function f -d "Shortcut for find <dir: default='.'> | xargs grep <string> -"
	if test (count $argv) -eq 1
		find . | xargs grep -n --directories=skip $argv[1] -
	else
		find $argv[1] | xargs grep -n --directories=skip $argv[2] -
	end
end

