function rem -d "sudo apt-get remove shortcut..."
	if test $argv[1] = "--auto"
		sudo apt autoremove
	else
		sudo apt-get remove $argv
	end
end

