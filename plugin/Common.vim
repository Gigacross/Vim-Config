let mapleader=";"
let maplocaleader=";"

" Paste
set pastetoggle=<F8>

" Vanilla Vim
map <Leader><Leader>i :set paste<CR>
map <Leader><Leader>I :set nopaste<CR>
map <Leader><Leader>< :bp<CR>
map <Leader><Leader>> :bn<CR>

" Nerd Tree
map <Leader><Leader>a :NERDTreeToggle<CR>

" Fuzzy Finder
map <Leader><Leader>F :FuzzyFinderFile!<CR>
map <Leader><Leader>f :FuzzyFinderFile<CR>

" Shell
nmap <Leader><Leader>s :call InitShell()<cr>

" Exploring
if has("win32")
	map <Leader><Leader>/ :!start explorer .<CR>
	map <Leader><Leader>. :!start explorer %:h<CR>

elseif has("mac")
	map <Leader><Leader>/ :!open .<CR>
	map <Leader><Leader>. :!open %:h<CR>
endif

" Paths
map <Leader><Leader>y :let @*=expand('%:p')<CR> :let @p=expand('%:p')<CR>
map <Leader><Leader>Y :let @*=expand('%:p')

" Listing -> :he 'lcs
set lcs=tab:\|\ ,trail:_
set list

" Swap files
set nobackup
set nowritebackup
set noswapfile
