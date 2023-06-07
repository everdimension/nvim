" check vim-plug
if exists('*plug#begin') == 0
  echom "Vim Plug Not Found!"
endif
  
" call plug#begin('~/.config/nvim/autoload/plugged')
call plug#begin(stdpath('data') . '/plugged')

	" Language packs for Vim (syntax support)
	" Plug 'sheerun/vim-polyglot'

	" Treesitter (syntax highlighting)
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" File Explorer
	" Plug 'preservim/nerdtree'
	Plug 'kyazdani42/nvim-tree.lua'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Surround
	Plug 'tpope/vim-surround'

	" One Dark Theme
	Plug 'joshdick/onedark.vim'
	" One dark/light theme
	Plug 'rakr/vim-one'
	Plug 'LunarVim/onedarker.nvim'
	Plug 'RRethy/nvim-base16'

	" Color theme
	" Plug 'chuling/ci_dark'
	" Plug 'luochen1990/rainbow'

	" Comments based on language
	" Plug 'tpope/vim-commentary'
	" Plug 'preservim/nerdcommenter'
	Plug 'numToStr/Comment.nvim'

	" Automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
	Plug 'tpope/vim-sleuth'
	
	" Plug 'maxmellon/vim-jsx-pretty' " (already emdedded in  'sheerun/vim-polyglot')"

	" Highlight letters to quickly navigate to next words 
	Plug 'unblevable/quick-scope'

	" Completion and LSP inspired by VSCode
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'

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
	Plug 'mhinz/vim-signify' " show git diff in gutter
	Plug 'tpope/vim-fugitive' " :Git command and :Gitsplit
	Plug 'tpope/vim-rhubarb' " extends vim-fugitive's :GBrowse to open Github URLs
	Plug 'tommcdo/vim-fubitive' " extends vim-fugitive's :GBrowse to open BitBucket URLs
	Plug 'shumphrey/fugitive-gitlab.vim' " extends vim-fugitive's :GBrowse to open GitLab URLs

	" Expand selection by pressing same key
	Plug 'terryma/vim-expand-region'

	" Multiple cursors like in sublime text
	Plug 'terryma/vim-multiple-cursors'
	" Maybe try this one?
	" Plug mg979/vim-visual-multi

	" Status line
	Plug 'itchyny/lightline.vim'

	" Make normal mode work when RU keyboard layout is selected in OS
	Plug 'powerman/vim-plugin-ruscmd'

	Plug 'kdheepak/monochrome.nvim'

	" Show buffers as 'tabs'
	" Plug 'yazdani42/nvim-web-devicons'
	" Plug 'romgrk/lib.kom'
	" Plug 'romgrk/barbar.nvim'
	Plug 'kyazdani42/nvim-web-devicons' " required by  'akinsho/bufferline.nvim'
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }



call plug#end()

" Plugin configuration
let g:themeType = "dark"

source $HOME/.config/nvim/plug-config/quick-scope.vim " must be sourced before `colorscheme` is set
" **** COLORSCHEME ****

function! SourceColorSchemeRelatedPlugins()
  " let g:colorscheme_name = 'base-16-ayu-dark'
  source $HOME/.config/nvim/plug-config/onedark.vim
  " source $HOME/.config/nvim/plug-config/colorscheme-base-16.vim
  source $HOME/.config/nvim/plug-config/one.vim
  " source $HOME/.config/nvim/plug-config/monochrome.vim
  source $HOME/.config/nvim/plug-config/lightline.vim
endfunction

call SourceColorSchemeRelatedPlugins()

function! SwitchThemeGlobal()
  if g:themeType == "light"
    let g:themeType = "dark"
  else
    let g:themeType = "light"
  endif
  call SourceColorSchemeRelatedPlugins()
  echo g:themeType
endfunction

nnoremap <leader>dd :call SwitchThemeGlobal()<cr>



" source $HOME/.config/nvim/plug-config/ci-dark.vim
source $HOME/.config/nvim/plug-config/coc-yank.vim " must be sourced before `colorscheme` is set

" source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/plug-config/Comment.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/coc-prettier.vim
source $HOME/.config/nvim/plug-config/coc-highlights.vim
source $HOME/.config/nvim/plug-config/startify-configuration.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/vim-signify.vim
source $HOME/.config/nvim/plug-config/vim-expand-region.vim
lua << EOF
  require('Comment').setup()
EOF
" source $HOME/.config/nvim/plug-config/nerdtree.vim
lua << EOF
  require('user/bufferline')
  require('user/nvim-tree')
EOF

