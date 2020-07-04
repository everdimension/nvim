set autoread

" :(
" Unfortunately, you still need to interact with
" the file somehow (e.g., move cursor)
" for it to refresh

" vim doesn't support sourcing
" files by relative path, so we get current folder
" and concatenate it 
" https://stackoverflow.com/a/46969659/3523645
" let path = expand('%:p:h')
" exec 'source' path . '/watch-for-changes.vim'
source $HOME/.config/nvim/custom/watch-for-changes/watch-for-changes.vim

" TODO:
" It's better (in my opinion) to initiate the
" WatchForChangesAllFile from this file,
" not from '/watch-for-changes.vim'
" But calling functions from other files is not very
" straightforward in vim
" One day I should read this:
" https://vimhelp.org/usr_41.txt.html#write-library-script
"
" But for now, I just initiate the script at the
" bottom of '/watch-for-changes.vim'

" autocmd VimEnter * WatchForChangesAllFile! 
