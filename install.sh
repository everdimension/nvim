# This file is supposed to list
# all external dependencies that need to be installed
# either for nvim itself or for some of the plugins
# and cannot be installed automatically with 
# the plugin manager (e.g. vim-plug, which I use for all plugins)

# For now this file serves just as a reference, but
# in the future it may be used as an actual script
# that installs all necessary nvim configuration

# 0. Prerequisites
# brew is a package manager for mac
# so I guess it needs to installed first:
# https://brew.sh/

# 1. Neovim
brew install neovim

# 2. Python 3
brew install python3
# pip3 should be installed along with python3
# pip3 is a package manager for python

# 2.1. Several python3 executables can be found, so neovim suggests
# explicitly defining which one to use
# My python3 was installed by brew to /usr/local/bin/python3, so 
# I added this line to ./general/settings.vim:

# let g:python3_host_prog = '/usr/local/bin/python3'


# 3. NodeJS
# Since I mostly do web-dev, the plugins that I use
# require node

brew install fnm # node version manager, https://github.com/Schniz/fnm
# then install a particular version of node:
# https://github.com/Schniz/fnm#fnm-install-version
# As of right now, I'm using node v12.18.0

fnm install v12.18.0

# 4. Vim Plug
# Plugin manager for vim
# https://github.com/junegunn/vim-plug
# From the vim-plug docs, to install vim-plug you run this command:

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 5. pynvim is used by the 'neoclide/coc.nvim' plugin and other stuff
pip3 install pynvim

# 6. Node client for neovim
# https://github.com/neovim/node-client
# I guess it's used for tooling written in nodejs, such as
# the 'neoclide/coc.nvim', 'cos-elint' and 'coc-prettier'
npm install -g neovim
# (npm should be installed along with NodeJS)

# 7. tmux (optional)
brew install tmux
# I'm using neovim from tmux,
# so after running :checkhealth in neovim it recommends the following:
#   - ADVICE:
#     - Put this in your ~/.tmux.conf and replace XXX by your $TERM outside of tmux:
#         set-option -sa terminal-overrides ',XXX:RGB'
#     - For older tmux versions use this instead:
#         set-option -ga terminal-overrides ',XXX:Tc'

# And that is what I did :)

# 8. fzf and vim-fzf
# these CLI tools are needed for 'junegunn/fzf.vim' plugin
# they are helpful just in terminal, too
brew install fzf # fzf is a general-purpose command-line fuzzy finder
brew install fd # fd is an alternative to find
