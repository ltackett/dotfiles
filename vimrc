if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

" remove the toolbars
set go-=T

set sw=2
set ts=2
set expandtab
set smarttab
set ai
set nu " show line numbers
"set tw=120
"set wrap
set background=light
set nocompatible        " Use Vim defaults (much better!)
set bs=2                " allow backspacing over everything in insert mode
"set backup             " keep a backup file
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
                        " than 50 lines of registers
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set wildmode=longest,list

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  " autocmd BufRead *.txt set tw=78

  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

if has("cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Add comment block, suggested by Mike Judge
au FileType haskell,vhdl,ada            let b:comment_leader = '-- '
au FileType vim                         let b:comment_leader = '" '
au FileType c,cpp,java,javascript       let b:comment_leader = '// '
au FileType sh,make,ruby,perl,php       let b:comment_leader = '# '
au FileType tex                         let b:comment_leader = '% '

noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR> 

if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
endif

" colorscheme twilight
colorscheme desert