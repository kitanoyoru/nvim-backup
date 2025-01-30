# Created by `pipx` on 2024-01-24 15:53:05
set PATH $PATH /Users/kitanoyoru/.local/bin
set -gx PIPX_DEFAULT_PYTHON "$HOME/.pyenv/versions/3.12.1/bin/python"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# aliases
abbr -a e nvim
abbr -a m make
abbr -a k kubectl
abbr -a g git
abbr -a tf terraform 
abbr -a gc 'git checkout'
abbr -a gs 'git status'
abbr -a ga 'git add -p'
abbr -a ssh-qc-dev 'sshpass -p '74fee854e9664796acff4b09fe68b8f2' ssh kitanoyoru@5.188.119.215 -p 2002'

if status is-interactive
  if ! set -q TMUX
		exec tmux
	end

  if test -f ~/.config/fish/completions/git_fzf.fish
    source ~/.config/fish/completions/git_fzf.fish
	  git_fzf_key_bindings
  end
end


if command -v eza > /dev/null
    abbr -a l 'eza'
    abbr -a ls 'eza'
    abbr -a ll 'eza -l'
    abbr -a lll 'eza -la'
else
    abbr -a l 'ls'
    abbr -a ll 'ls -l'
    abbr -a lll 'ls -la'
end

if command -v xh > /dev/null
  abbr -a http 'xh'
end

if command -v bat > /dev/null
  abbr -a cat 'bat --style=plain'
end

