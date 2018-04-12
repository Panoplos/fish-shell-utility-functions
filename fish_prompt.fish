set fish_git_dirty_color cyan
set fish_git_not_dirty_color green

function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_status (git status -s)

  if test -n "$git_status"
    echo -n -s (set_color $fish_git_dirty_color) ±$branch(set_color normal)
  else
    echo -n -s (set_color $fish_git_not_dirty_color) $branch(set_color normal)
  end
end

function fish_prompt
  set -l cyan (set_color cyan)
  set -l yellow (set_color yellow)
  set -l red (set_color red)
  set -l blue (set_color blue)
  set -l green (set_color green)
  set -l normal (set_color normal)

  set -l cwd $blue(pwd | sed "s:^$HOME:~:")

  set -l git_dir (git rev-parse --git-dir 2> /dev/null)

  # Output the prompt, left to right

  # Add a newline before new prompts
  echo -e ''

  # Display [venvname] if in a virtualenv
  if set -q VIRTUAL_ENV
      echo -n -s (set_color -b cyan black) '[' (basename "$VIRTUAL_ENV") ']' $normal ' '
  end

  # Print pwd or full path
  if test -n "$git_dir"
    echo -n -s (prompt_pwd)' '(set_color normal)  \((parse_git_branch)\)
  else
    echo -n -s (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
  end

  # Terminate with a nice prompt char
  echo -e ''
  echo -e -n -s 'app.credify.one 〉' $normal
end
