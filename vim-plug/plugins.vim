" check vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	echom "Vim Plug not found"
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Language packs for Vim (syntax support)
	Plug 'sheerun/vim-polyglot'
	" File Explorer
	Plug 'preservim/nerdtree'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Surround
	Plug 'tpope/vim-surround'
	" One Dark Theme
	Plug 'joshdick/onedark.vim'

	" Comments based on language
	" Plug 'tpope/vim-commentary'
	Plug 'preservim/nerdcommenter'

	" Automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
	Plug 'tpope/vim-sleuth'
	
	" Plug 'maxmellon/vim-jsx-pretty' " (already emdedded in  'sheerun/vim-polyglot')"

	" Highlight letters to quickly navigate to next words 
	Plug 'unblevable/quick-scope'

	" Completion and LSP inspired by VSCode
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Sets 'working directory' to the project root
	" based on current file based on some heuristics (e.g. VCS)
	Plug 'airblade/vim-rooter'
	
	" A start screen for Vim and Neovim
	Plug 'mhinz/vim-startify'

	" Fuzzy file search with fzf
	" (fzf is installed separately as a CLI command, see ~/.zshrc)
	" Yes, both plugins are required
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" Git integration
	Plug 'mhinz/vim-signify'

	" Expand selection by pressing same key
	Plug 'terryma/vim-expand-region'

	" Multiple cursors like in sublime text
	Plug 'terryma/vim-multiple-cursors'



call plug#end()

" Plugin configuration

source $HOME/.config/nvim/plug-config/quick-scope.vim " must be sourced before `colorscheme` is set
" **** COLORSCHEME ****
source $HOME/.config/nvim/plug-config/onedark.vim
source $HOME/.config/nvim/plug-config/coc-yank.vim " must be sourced before `colorscheme` is set

source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/coc-prettier.vim
source $HOME/.config/nvim/plug-config/coc-highlights.vim
source $HOME/.config/nvim/plug-config/startify-configuration.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/vim-signify.vim
source $HOME/.config/nvim/plug-config/vim-expand-region.vim

