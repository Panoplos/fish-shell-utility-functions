function sign -d "Shortcut for signing text documents with GPG."
	gpg --clearsign -o $argv[1].signed $argv[1]
end

