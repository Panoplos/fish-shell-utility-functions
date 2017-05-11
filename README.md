# Fish Shell Utility Functions
Compilation of some useful fish shell functions. Lots of shortcuts for common actions.

### Shell Prompt, Clear (for Konsole) & Sudo VIM
`fish_prompt.fish` Creates a clean, easy-on-the eyes prompt, as follows:

![Prompt](http://res.cloudinary.com/panoplos/image/upload/e_shadow:50,r_0/v1494478755/Prompt_ilx658.png)

`c`: Used to clear the console and scroll buffer (needed on some terminal emulators like Konsole).

`svim`: Shortcut for `sudo vim`.

### File System
`golo`: Shortcut for `sudo su`

`f`: Shortcut for `find <dir: default='.'> | xargs grep <string> -`

* Usage: `find /usr/lib fish`

`cpmp`: Copy file or directory (and sub dirs) to target and make parent directories if necessary.

* Usage: `cpmp ~/mypic.png ~/Images/Me`

`mvmp`: Move file or directory to target and make parent directories if necessary.

* Usage: `mvmp ~/mydir ~/new/path/to/mydir`
* Note: Adding a slash (/) to the end of the target will create a new dir of that name (if it doesn't exist) and copy the source to the new dir.

`rmrf`: Shortcut for `rm -rf`. Of course, use with caution!

`z`: Quick and smart archive handling (depends on [`dtrx`](https://github.com/moonpyk/dtrx)

`bu`: Create a backup of `item` (file or directory) to `_item_.bak`.

* Usage: `z [-opts] file.ext`<br/>
Extracts any archive with options acceptable to dtrx (see: dtrx --help)<br/>
Example: `z -vo test.tar.bz2`
* `z [-v] input [output]`<br/>
Compresses _input_ file/directory, optionally verbosely, to _output_.tar.bz2. If output is omitted, it will create an archive with the name _input_.tar.bz2.<br/>
Example: `z -v test test2`<br/>
This will create a tar bz2 compressed archive name test2.tar.bz2

### Apt Shortcuts
`search`: Search for packages by keyword(s) in apt's cache.

* Usage: `search fish | grep installed`

`show`: Show package details.

`ins`: Install new package.

`rem`: Remove package.

### Installation

Simply clone the repo locally and copy its contents into `~/.config/fish/functions`.

You can also create `./config/fish/functions` as a soft link that points to the git repo directory. This way you can pull down updates and have any updates additions reflected immediately. 
