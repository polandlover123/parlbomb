let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/parlbomb
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/parlbomb/home/programs/hyprland/execonce.nix
badd +3 ~/parlbomb/home/programs/neovim/plugins/telescope.nix
badd +56 ~/parlbomb/home/programs/neovim/plugins/lsp.nix
badd +1 ~/parlbomb/home/programs/polkit.nix
badd +1 home/programs/hyprland/binds.nix
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/parlbomb/home/programs/neovim/plugins/telescope.nix
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 40 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 172 + 106) / 213)
argglobal
enew
file chadtree://~/parlbomb
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <nowait> <silent> 	 <Cmd>lua CHAD.Secondary(false)
vnoremap <buffer> <nowait> <silent> 	 <Cmd>lua CHAD.Secondary(true)
nnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Primary(false)
vnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Primary(true)
nnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Refresh(false)
vnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Refresh(true)
nnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Copy_relname(false)
vnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Copy_relname(true)
nnoremap <buffer> <nowait> <silent> + <Cmd>lua CHAD.Bigger(false)
vnoremap <buffer> <nowait> <silent> + <Cmd>lua CHAD.Bigger(true)
nnoremap <buffer> <nowait> <silent> - <Cmd>lua CHAD.Smaller(false)
vnoremap <buffer> <nowait> <silent> - <Cmd>lua CHAD.Smaller(true)
nnoremap <buffer> <nowait> <silent> . <Cmd>lua CHAD.Toggle_hidden(false)
vnoremap <buffer> <nowait> <silent> . <Cmd>lua CHAD.Toggle_hidden(true)
nnoremap <buffer> <nowait> <silent> = <Cmd>lua CHAD.Bigger(false)
vnoremap <buffer> <nowait> <silent> = <Cmd>lua CHAD.Bigger(true)
nnoremap <buffer> <nowait> <silent> A <Cmd>lua CHAD.Link(false)
vnoremap <buffer> <nowait> <silent> A <Cmd>lua CHAD.Link(true)
nnoremap <buffer> <nowait> <silent> C <Cmd>lua CHAD.Change_focus_up(false)
vnoremap <buffer> <nowait> <silent> C <Cmd>lua CHAD.Change_focus_up(true)
nnoremap <buffer> <nowait> <silent> F <Cmd>lua CHAD.Clear_filter(false)
vnoremap <buffer> <nowait> <silent> F <Cmd>lua CHAD.Clear_filter(true)
nnoremap <buffer> <nowait> <silent> J <Cmd>lua CHAD.Jump_to_current(false)
vnoremap <buffer> <nowait> <silent> J <Cmd>lua CHAD.Jump_to_current(true)
nnoremap <buffer> <nowait> <silent> K <Cmd>lua CHAD.Stat(false)
vnoremap <buffer> <nowait> <silent> K <Cmd>lua CHAD.Stat(true)
nnoremap <buffer> <nowait> <silent> L <Cmd>lua CHAD.New_link(false)
vnoremap <buffer> <nowait> <silent> L <Cmd>lua CHAD.New_link(true)
nnoremap <buffer> <nowait> <silent> S <Cmd>lua CHAD.Clear_selection(false)
vnoremap <buffer> <nowait> <silent> S <Cmd>lua CHAD.Clear_selection(true)
nnoremap <buffer> <nowait> <silent> T <Cmd>lua CHAD.Toggle_follow_ignore(false)
vnoremap <buffer> <nowait> <silent> T <Cmd>lua CHAD.Toggle_follow_ignore(true)
nnoremap <buffer> <nowait> <silent> U <Cmd>lua CHAD.Toggle_follow_links(false)
vnoremap <buffer> <nowait> <silent> U <Cmd>lua CHAD.Toggle_follow_links(true)
nnoremap <buffer> <nowait> <silent> W <Cmd>lua CHAD.H_split(false)
vnoremap <buffer> <nowait> <silent> W <Cmd>lua CHAD.H_split(true)
nnoremap <buffer> <nowait> <silent> X <Cmd>lua CHAD.Toggle_exec(false)
vnoremap <buffer> <nowait> <silent> X <Cmd>lua CHAD.Toggle_exec(true)
nnoremap <buffer> <nowait> <silent> Y <Cmd>lua CHAD.Copy_basename(false)
vnoremap <buffer> <nowait> <silent> Y <Cmd>lua CHAD.Copy_basename(true)
nnoremap <buffer> <nowait> <silent> _ <Cmd>lua CHAD.Smaller(false)
vnoremap <buffer> <nowait> <silent> _ <Cmd>lua CHAD.Smaller(true)
nnoremap <buffer> <nowait> <silent> ` <Cmd>lua CHAD.Collapse(false)
vnoremap <buffer> <nowait> <silent> ` <Cmd>lua CHAD.Collapse(true)
nnoremap <buffer> <nowait> <silent> a <Cmd>lua CHAD.New(false)
vnoremap <buffer> <nowait> <silent> a <Cmd>lua CHAD.New(true)
nnoremap <buffer> <nowait> <silent> b <Cmd>lua CHAD.Change_dir(false)
vnoremap <buffer> <nowait> <silent> b <Cmd>lua CHAD.Change_dir(true)
nnoremap <buffer> <nowait> <silent> c <Cmd>lua CHAD.Change_focus(false)
vnoremap <buffer> <nowait> <silent> c <Cmd>lua CHAD.Change_focus(true)
nnoremap <buffer> <nowait> <silent> d <Cmd>lua CHAD.Delete(false)
vnoremap <buffer> <nowait> <silent> d <Cmd>lua CHAD.Delete(true)
nnoremap <buffer> <nowait> <silent> f <Cmd>lua CHAD.Filter(false)
vnoremap <buffer> <nowait> <silent> f <Cmd>lua CHAD.Filter(true)
nnoremap <buffer> <nowait> <silent> i <Cmd>lua CHAD.Toggle_version_control(false)
vnoremap <buffer> <nowait> <silent> i <Cmd>lua CHAD.Toggle_version_control(true)
nnoremap <buffer> <nowait> <silent> m <Cmd>lua CHAD.Bookmark_goto(false)
vnoremap <buffer> <nowait> <silent> m <Cmd>lua CHAD.Bookmark_goto(true)
nnoremap <buffer> <nowait> <silent> o <Cmd>lua CHAD.Open_sys(false)
vnoremap <buffer> <nowait> <silent> o <Cmd>lua CHAD.Open_sys(true)
nnoremap <buffer> <nowait> <silent> p <Cmd>lua CHAD.Copy(false)
vnoremap <buffer> <nowait> <silent> p <Cmd>lua CHAD.Copy(true)
nnoremap <buffer> <nowait> <silent> q <Cmd>lua CHAD.Quit(false)
vnoremap <buffer> <nowait> <silent> q <Cmd>lua CHAD.Quit(true)
nnoremap <buffer> <nowait> <silent> r <Cmd>lua CHAD.Rename(false)
vnoremap <buffer> <nowait> <silent> r <Cmd>lua CHAD.Rename(true)
nnoremap <buffer> <nowait> <silent> s <Cmd>lua CHAD.Select(false)
vnoremap <buffer> <nowait> <silent> s <Cmd>lua CHAD.Select(true)
nnoremap <buffer> <nowait> <silent> t <Cmd>lua CHAD.Trash(false)
vnoremap <buffer> <nowait> <silent> t <Cmd>lua CHAD.Trash(true)
nnoremap <buffer> <nowait> <silent> u <Cmd>lua CHAD.Toggle_follow(false)
vnoremap <buffer> <nowait> <silent> u <Cmd>lua CHAD.Toggle_follow(true)
nnoremap <buffer> <nowait> <silent> w <Cmd>lua CHAD.V_split(false)
vnoremap <buffer> <nowait> <silent> w <Cmd>lua CHAD.V_split(true)
nnoremap <buffer> <nowait> <silent> x <Cmd>lua CHAD.Cut(false)
vnoremap <buffer> <nowait> <silent> x <Cmd>lua CHAD.Cut(true)
nnoremap <buffer> <nowait> <silent> y <Cmd>lua CHAD.Copy_name(false)
vnoremap <buffer> <nowait> <silent> y <Cmd>lua CHAD.Copy_name(true)
nnoremap <buffer> <silent> { 5g<Up>
nnoremap <buffer> <silent> } 5g<Down>
nnoremap <buffer> <nowait> <silent> ~ <Cmd>lua CHAD.Refocus(false)
vnoremap <buffer> <nowait> <silent> ~ <Cmd>lua CHAD.Refocus(true)
nnoremap <buffer> <nowait> <silent> <S-Tab> <Cmd>lua CHAD.Collapse(false)
vnoremap <buffer> <nowait> <silent> <S-Tab> <Cmd>lua CHAD.Collapse(true)
nnoremap <buffer> <nowait> <silent> <C-Y> <Cmd>lua CHAD.Copy_relname(false)
vnoremap <buffer> <nowait> <silent> <C-Y> <Cmd>lua CHAD.Copy_relname(true)
nnoremap <buffer> <nowait> <silent> <C-R> <Cmd>lua CHAD.Refresh(false)
vnoremap <buffer> <nowait> <silent> <C-R> <Cmd>lua CHAD.Refresh(true)
nnoremap <buffer> <nowait> <silent> <2-LeftMouse> <Cmd>lua CHAD.Secondary(false)
vnoremap <buffer> <nowait> <silent> <2-LeftMouse> <Cmd>lua CHAD.Secondary(true)
nnoremap <buffer> <nowait> <silent> <M-CR> <Cmd>lua CHAD.Tertiary(false)
vnoremap <buffer> <nowait> <silent> <M-CR> <Cmd>lua CHAD.Tertiary(true)
nnoremap <buffer> <nowait> <silent> <MiddleMouse> <Cmd>lua CHAD.Tertiary(false)
vnoremap <buffer> <nowait> <silent> <MiddleMouse> <Cmd>lua CHAD.Tertiary(true)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,fb:���
setlocal commentstring=
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'CHADTree'
setlocal filetype=CHADTree
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcqj
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=no
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=%#lualine_a_inactive#\ ~/parlbomb\ %#lualine_transitional_lualine_a_inactive_to_lualine_c_normal#%#lualine_c_normal#%=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'CHADTree'
setlocal syntax=CHADTree
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-1
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal winfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
balt ~/parlbomb/home/programs/neovim/plugins/lsp.nix
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'nix'
setlocal filetype=nix
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcqj
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=nvim_treesitter#indent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=v:lua.vim.lsp.omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=yes
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=noplainbuffer
setlocal statuscolumn=
setlocal statusline=%#lualine_a_normal#\ NORMAL\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_b_normal#\ \ master\ %#lualine_b_diagnostics_warn_normal#\ ����\ 2\ %<%#lualine_c_normal#\ telescope.nix\ %#lualine_c_normal#%=%#lualine_x_filetype_DevIconNix_normal#\ \ %#lualine_c_normal#nix\ %#lualine_b_normal#\ 33%%\ %#lualine_z_normal#\ \ 09:39\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=v:lua.vim.lsp.tagfunc
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=%#barbecue_normal#\ %#barbecue_dirname#home%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %#barbecue_dirname#programs%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %#barbecue_dirname#neovim%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %#barbecue_dirname#plugins%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %@v:lua.require'barbecue.ui.mouse'.navigate_1000_1_0@%#barbecue_fileicon_Nix#%#barbecue_normal#\ %#barbecue_basename#telescope.nix%X%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %@v:lua.require'barbecue.ui.mouse'.navigate_1000_1_0@%#barbecue_context_function#%#barbecue_normal#\ %#barbecue_context#(anonymous\ lambda)%X%#barbecue_normal#%=%#barbecue_normal#\ 
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 3 - ((2 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 08|
wincmd w
exe 'vert 1resize ' . ((&columns * 40 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 172 + 106) / 213)
tabnext
edit home/programs/hyprland/binds.nix
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 40 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 172 + 106) / 213)
argglobal
enew
file chadtree://~/parlbomb
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <nowait> <silent> 	 <Cmd>lua CHAD.Secondary(false)
vnoremap <buffer> <nowait> <silent> 	 <Cmd>lua CHAD.Secondary(true)
nnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Primary(false)
vnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Primary(true)
nnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Refresh(false)
vnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Refresh(true)
nnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Copy_relname(false)
vnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Copy_relname(true)
nnoremap <buffer> <nowait> <silent> + <Cmd>lua CHAD.Bigger(false)
vnoremap <buffer> <nowait> <silent> + <Cmd>lua CHAD.Bigger(true)
nnoremap <buffer> <nowait> <silent> - <Cmd>lua CHAD.Smaller(false)
vnoremap <buffer> <nowait> <silent> - <Cmd>lua CHAD.Smaller(true)
nnoremap <buffer> <nowait> <silent> . <Cmd>lua CHAD.Toggle_hidden(false)
vnoremap <buffer> <nowait> <silent> . <Cmd>lua CHAD.Toggle_hidden(true)
nnoremap <buffer> <nowait> <silent> = <Cmd>lua CHAD.Bigger(false)
vnoremap <buffer> <nowait> <silent> = <Cmd>lua CHAD.Bigger(true)
nnoremap <buffer> <nowait> <silent> A <Cmd>lua CHAD.Link(false)
vnoremap <buffer> <nowait> <silent> A <Cmd>lua CHAD.Link(true)
nnoremap <buffer> <nowait> <silent> C <Cmd>lua CHAD.Change_focus_up(false)
vnoremap <buffer> <nowait> <silent> C <Cmd>lua CHAD.Change_focus_up(true)
nnoremap <buffer> <nowait> <silent> F <Cmd>lua CHAD.Clear_filter(false)
vnoremap <buffer> <nowait> <silent> F <Cmd>lua CHAD.Clear_filter(true)
nnoremap <buffer> <nowait> <silent> J <Cmd>lua CHAD.Jump_to_current(false)
vnoremap <buffer> <nowait> <silent> J <Cmd>lua CHAD.Jump_to_current(true)
nnoremap <buffer> <nowait> <silent> K <Cmd>lua CHAD.Stat(false)
vnoremap <buffer> <nowait> <silent> K <Cmd>lua CHAD.Stat(true)
nnoremap <buffer> <nowait> <silent> L <Cmd>lua CHAD.New_link(false)
vnoremap <buffer> <nowait> <silent> L <Cmd>lua CHAD.New_link(true)
nnoremap <buffer> <nowait> <silent> S <Cmd>lua CHAD.Clear_selection(false)
vnoremap <buffer> <nowait> <silent> S <Cmd>lua CHAD.Clear_selection(true)
nnoremap <buffer> <nowait> <silent> T <Cmd>lua CHAD.Toggle_follow_ignore(false)
vnoremap <buffer> <nowait> <silent> T <Cmd>lua CHAD.Toggle_follow_ignore(true)
nnoremap <buffer> <nowait> <silent> U <Cmd>lua CHAD.Toggle_follow_links(false)
vnoremap <buffer> <nowait> <silent> U <Cmd>lua CHAD.Toggle_follow_links(true)
nnoremap <buffer> <nowait> <silent> W <Cmd>lua CHAD.H_split(false)
vnoremap <buffer> <nowait> <silent> W <Cmd>lua CHAD.H_split(true)
nnoremap <buffer> <nowait> <silent> X <Cmd>lua CHAD.Toggle_exec(false)
vnoremap <buffer> <nowait> <silent> X <Cmd>lua CHAD.Toggle_exec(true)
nnoremap <buffer> <nowait> <silent> Y <Cmd>lua CHAD.Copy_basename(false)
vnoremap <buffer> <nowait> <silent> Y <Cmd>lua CHAD.Copy_basename(true)
nnoremap <buffer> <nowait> <silent> _ <Cmd>lua CHAD.Smaller(false)
vnoremap <buffer> <nowait> <silent> _ <Cmd>lua CHAD.Smaller(true)
nnoremap <buffer> <nowait> <silent> ` <Cmd>lua CHAD.Collapse(false)
vnoremap <buffer> <nowait> <silent> ` <Cmd>lua CHAD.Collapse(true)
nnoremap <buffer> <nowait> <silent> a <Cmd>lua CHAD.New(false)
vnoremap <buffer> <nowait> <silent> a <Cmd>lua CHAD.New(true)
nnoremap <buffer> <nowait> <silent> b <Cmd>lua CHAD.Change_dir(false)
vnoremap <buffer> <nowait> <silent> b <Cmd>lua CHAD.Change_dir(true)
nnoremap <buffer> <nowait> <silent> c <Cmd>lua CHAD.Change_focus(false)
vnoremap <buffer> <nowait> <silent> c <Cmd>lua CHAD.Change_focus(true)
nnoremap <buffer> <nowait> <silent> d <Cmd>lua CHAD.Delete(false)
vnoremap <buffer> <nowait> <silent> d <Cmd>lua CHAD.Delete(true)
nnoremap <buffer> <nowait> <silent> f <Cmd>lua CHAD.Filter(false)
vnoremap <buffer> <nowait> <silent> f <Cmd>lua CHAD.Filter(true)
nnoremap <buffer> <nowait> <silent> i <Cmd>lua CHAD.Toggle_version_control(false)
vnoremap <buffer> <nowait> <silent> i <Cmd>lua CHAD.Toggle_version_control(true)
nnoremap <buffer> <nowait> <silent> m <Cmd>lua CHAD.Bookmark_goto(false)
vnoremap <buffer> <nowait> <silent> m <Cmd>lua CHAD.Bookmark_goto(true)
nnoremap <buffer> <nowait> <silent> o <Cmd>lua CHAD.Open_sys(false)
vnoremap <buffer> <nowait> <silent> o <Cmd>lua CHAD.Open_sys(true)
nnoremap <buffer> <nowait> <silent> p <Cmd>lua CHAD.Copy(false)
vnoremap <buffer> <nowait> <silent> p <Cmd>lua CHAD.Copy(true)
nnoremap <buffer> <nowait> <silent> q <Cmd>lua CHAD.Quit(false)
vnoremap <buffer> <nowait> <silent> q <Cmd>lua CHAD.Quit(true)
nnoremap <buffer> <nowait> <silent> r <Cmd>lua CHAD.Rename(false)
vnoremap <buffer> <nowait> <silent> r <Cmd>lua CHAD.Rename(true)
nnoremap <buffer> <nowait> <silent> s <Cmd>lua CHAD.Select(false)
vnoremap <buffer> <nowait> <silent> s <Cmd>lua CHAD.Select(true)
nnoremap <buffer> <nowait> <silent> t <Cmd>lua CHAD.Trash(false)
vnoremap <buffer> <nowait> <silent> t <Cmd>lua CHAD.Trash(true)
nnoremap <buffer> <nowait> <silent> u <Cmd>lua CHAD.Toggle_follow(false)
vnoremap <buffer> <nowait> <silent> u <Cmd>lua CHAD.Toggle_follow(true)
nnoremap <buffer> <nowait> <silent> w <Cmd>lua CHAD.V_split(false)
vnoremap <buffer> <nowait> <silent> w <Cmd>lua CHAD.V_split(true)
nnoremap <buffer> <nowait> <silent> x <Cmd>lua CHAD.Cut(false)
vnoremap <buffer> <nowait> <silent> x <Cmd>lua CHAD.Cut(true)
nnoremap <buffer> <nowait> <silent> y <Cmd>lua CHAD.Copy_name(false)
vnoremap <buffer> <nowait> <silent> y <Cmd>lua CHAD.Copy_name(true)
nnoremap <buffer> <silent> { 5g<Up>
nnoremap <buffer> <silent> } 5g<Down>
nnoremap <buffer> <nowait> <silent> ~ <Cmd>lua CHAD.Refocus(false)
vnoremap <buffer> <nowait> <silent> ~ <Cmd>lua CHAD.Refocus(true)
nnoremap <buffer> <nowait> <silent> <S-Tab> <Cmd>lua CHAD.Collapse(false)
vnoremap <buffer> <nowait> <silent> <S-Tab> <Cmd>lua CHAD.Collapse(true)
nnoremap <buffer> <nowait> <silent> <C-Y> <Cmd>lua CHAD.Copy_relname(false)
vnoremap <buffer> <nowait> <silent> <C-Y> <Cmd>lua CHAD.Copy_relname(true)
nnoremap <buffer> <nowait> <silent> <C-R> <Cmd>lua CHAD.Refresh(false)
vnoremap <buffer> <nowait> <silent> <C-R> <Cmd>lua CHAD.Refresh(true)
nnoremap <buffer> <nowait> <silent> <2-LeftMouse> <Cmd>lua CHAD.Secondary(false)
vnoremap <buffer> <nowait> <silent> <2-LeftMouse> <Cmd>lua CHAD.Secondary(true)
nnoremap <buffer> <nowait> <silent> <M-CR> <Cmd>lua CHAD.Tertiary(false)
vnoremap <buffer> <nowait> <silent> <M-CR> <Cmd>lua CHAD.Tertiary(true)
nnoremap <buffer> <nowait> <silent> <MiddleMouse> <Cmd>lua CHAD.Tertiary(false)
vnoremap <buffer> <nowait> <silent> <MiddleMouse> <Cmd>lua CHAD.Tertiary(true)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,fb:���
setlocal commentstring=
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'CHADTree'
setlocal filetype=CHADTree
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcqj
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=no
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=%#lualine_a_inactive#\ ~/parlbomb\ %#lualine_transitional_lualine_a_inactive_to_lualine_c_normal#%#lualine_c_normal#%=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'CHADTree'
setlocal syntax=CHADTree
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-1
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal winfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'nix'
setlocal filetype=nix
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcqj
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=nvim_treesitter#indent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=v:lua.vim.lsp.omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=yes
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=noplainbuffer
setlocal statuscolumn=
setlocal statusline=%#lualine_a_normal#\ NORMAL\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_b_normal#\ \ master\ %#lualine_b_diagnostics_warn_normal#\ ����\ 2\ %<%#lualine_c_normal#\ binds.nix\ %#lualine_c_normal#%=%#lualine_x_filetype_DevIconNix_normal#\ \ %#lualine_c_normal#nix\ %#lualine_b_normal#\ Top\ %#lualine_z_normal#\ \ 09:40\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=v:lua.vim.lsp.tagfunc
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=%#barbecue_normal#\ %#barbecue_dirname#home%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %#barbecue_dirname#programs%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %#barbecue_dirname#hyprland%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %@v:lua.require'barbecue.ui.mouse'.navigate_1040_1_0@%#barbecue_fileicon_Nix#%#barbecue_normal#\ %#barbecue_basename#binds.nix%X%#barbecue_normal#%=%#barbecue_normal#\ 
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 40 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 172 + 106) / 213)
tabnext
edit ~/parlbomb/home/programs/polkit.nix
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
enew
file chadtree://~/parlbomb
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <nowait> <silent> 	 <Cmd>lua CHAD.Secondary(false)
vnoremap <buffer> <nowait> <silent> 	 <Cmd>lua CHAD.Secondary(true)
nnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Primary(false)
vnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Primary(true)
nnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Refresh(false)
vnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Refresh(true)
nnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Copy_relname(false)
vnoremap <buffer> <nowait> <silent>  <Cmd>lua CHAD.Copy_relname(true)
nnoremap <buffer> <nowait> <silent> + <Cmd>lua CHAD.Bigger(false)
vnoremap <buffer> <nowait> <silent> + <Cmd>lua CHAD.Bigger(true)
nnoremap <buffer> <nowait> <silent> - <Cmd>lua CHAD.Smaller(false)
vnoremap <buffer> <nowait> <silent> - <Cmd>lua CHAD.Smaller(true)
nnoremap <buffer> <nowait> <silent> . <Cmd>lua CHAD.Toggle_hidden(false)
vnoremap <buffer> <nowait> <silent> . <Cmd>lua CHAD.Toggle_hidden(true)
nnoremap <buffer> <nowait> <silent> = <Cmd>lua CHAD.Bigger(false)
vnoremap <buffer> <nowait> <silent> = <Cmd>lua CHAD.Bigger(true)
nnoremap <buffer> <nowait> <silent> A <Cmd>lua CHAD.Link(false)
vnoremap <buffer> <nowait> <silent> A <Cmd>lua CHAD.Link(true)
nnoremap <buffer> <nowait> <silent> C <Cmd>lua CHAD.Change_focus_up(false)
vnoremap <buffer> <nowait> <silent> C <Cmd>lua CHAD.Change_focus_up(true)
nnoremap <buffer> <nowait> <silent> F <Cmd>lua CHAD.Clear_filter(false)
vnoremap <buffer> <nowait> <silent> F <Cmd>lua CHAD.Clear_filter(true)
nnoremap <buffer> <nowait> <silent> J <Cmd>lua CHAD.Jump_to_current(false)
vnoremap <buffer> <nowait> <silent> J <Cmd>lua CHAD.Jump_to_current(true)
nnoremap <buffer> <nowait> <silent> K <Cmd>lua CHAD.Stat(false)
vnoremap <buffer> <nowait> <silent> K <Cmd>lua CHAD.Stat(true)
nnoremap <buffer> <nowait> <silent> L <Cmd>lua CHAD.New_link(false)
vnoremap <buffer> <nowait> <silent> L <Cmd>lua CHAD.New_link(true)
nnoremap <buffer> <nowait> <silent> S <Cmd>lua CHAD.Clear_selection(false)
vnoremap <buffer> <nowait> <silent> S <Cmd>lua CHAD.Clear_selection(true)
nnoremap <buffer> <nowait> <silent> T <Cmd>lua CHAD.Toggle_follow_ignore(false)
vnoremap <buffer> <nowait> <silent> T <Cmd>lua CHAD.Toggle_follow_ignore(true)
nnoremap <buffer> <nowait> <silent> U <Cmd>lua CHAD.Toggle_follow_links(false)
vnoremap <buffer> <nowait> <silent> U <Cmd>lua CHAD.Toggle_follow_links(true)
nnoremap <buffer> <nowait> <silent> W <Cmd>lua CHAD.H_split(false)
vnoremap <buffer> <nowait> <silent> W <Cmd>lua CHAD.H_split(true)
nnoremap <buffer> <nowait> <silent> X <Cmd>lua CHAD.Toggle_exec(false)
vnoremap <buffer> <nowait> <silent> X <Cmd>lua CHAD.Toggle_exec(true)
nnoremap <buffer> <nowait> <silent> Y <Cmd>lua CHAD.Copy_basename(false)
vnoremap <buffer> <nowait> <silent> Y <Cmd>lua CHAD.Copy_basename(true)
nnoremap <buffer> <nowait> <silent> _ <Cmd>lua CHAD.Smaller(false)
vnoremap <buffer> <nowait> <silent> _ <Cmd>lua CHAD.Smaller(true)
nnoremap <buffer> <nowait> <silent> ` <Cmd>lua CHAD.Collapse(false)
vnoremap <buffer> <nowait> <silent> ` <Cmd>lua CHAD.Collapse(true)
nnoremap <buffer> <nowait> <silent> a <Cmd>lua CHAD.New(false)
vnoremap <buffer> <nowait> <silent> a <Cmd>lua CHAD.New(true)
nnoremap <buffer> <nowait> <silent> b <Cmd>lua CHAD.Change_dir(false)
vnoremap <buffer> <nowait> <silent> b <Cmd>lua CHAD.Change_dir(true)
nnoremap <buffer> <nowait> <silent> c <Cmd>lua CHAD.Change_focus(false)
vnoremap <buffer> <nowait> <silent> c <Cmd>lua CHAD.Change_focus(true)
nnoremap <buffer> <nowait> <silent> d <Cmd>lua CHAD.Delete(false)
vnoremap <buffer> <nowait> <silent> d <Cmd>lua CHAD.Delete(true)
nnoremap <buffer> <nowait> <silent> f <Cmd>lua CHAD.Filter(false)
vnoremap <buffer> <nowait> <silent> f <Cmd>lua CHAD.Filter(true)
nnoremap <buffer> <nowait> <silent> i <Cmd>lua CHAD.Toggle_version_control(false)
vnoremap <buffer> <nowait> <silent> i <Cmd>lua CHAD.Toggle_version_control(true)
nnoremap <buffer> <nowait> <silent> m <Cmd>lua CHAD.Bookmark_goto(false)
vnoremap <buffer> <nowait> <silent> m <Cmd>lua CHAD.Bookmark_goto(true)
nnoremap <buffer> <nowait> <silent> o <Cmd>lua CHAD.Open_sys(false)
vnoremap <buffer> <nowait> <silent> o <Cmd>lua CHAD.Open_sys(true)
nnoremap <buffer> <nowait> <silent> p <Cmd>lua CHAD.Copy(false)
vnoremap <buffer> <nowait> <silent> p <Cmd>lua CHAD.Copy(true)
nnoremap <buffer> <nowait> <silent> q <Cmd>lua CHAD.Quit(false)
vnoremap <buffer> <nowait> <silent> q <Cmd>lua CHAD.Quit(true)
nnoremap <buffer> <nowait> <silent> r <Cmd>lua CHAD.Rename(false)
vnoremap <buffer> <nowait> <silent> r <Cmd>lua CHAD.Rename(true)
nnoremap <buffer> <nowait> <silent> s <Cmd>lua CHAD.Select(false)
vnoremap <buffer> <nowait> <silent> s <Cmd>lua CHAD.Select(true)
nnoremap <buffer> <nowait> <silent> t <Cmd>lua CHAD.Trash(false)
vnoremap <buffer> <nowait> <silent> t <Cmd>lua CHAD.Trash(true)
nnoremap <buffer> <nowait> <silent> u <Cmd>lua CHAD.Toggle_follow(false)
vnoremap <buffer> <nowait> <silent> u <Cmd>lua CHAD.Toggle_follow(true)
nnoremap <buffer> <nowait> <silent> w <Cmd>lua CHAD.V_split(false)
vnoremap <buffer> <nowait> <silent> w <Cmd>lua CHAD.V_split(true)
nnoremap <buffer> <nowait> <silent> x <Cmd>lua CHAD.Cut(false)
vnoremap <buffer> <nowait> <silent> x <Cmd>lua CHAD.Cut(true)
nnoremap <buffer> <nowait> <silent> y <Cmd>lua CHAD.Copy_name(false)
vnoremap <buffer> <nowait> <silent> y <Cmd>lua CHAD.Copy_name(true)
nnoremap <buffer> <silent> { 5g<Up>
nnoremap <buffer> <silent> } 5g<Down>
nnoremap <buffer> <nowait> <silent> ~ <Cmd>lua CHAD.Refocus(false)
vnoremap <buffer> <nowait> <silent> ~ <Cmd>lua CHAD.Refocus(true)
nnoremap <buffer> <nowait> <silent> <S-Tab> <Cmd>lua CHAD.Collapse(false)
vnoremap <buffer> <nowait> <silent> <S-Tab> <Cmd>lua CHAD.Collapse(true)
nnoremap <buffer> <nowait> <silent> <C-Y> <Cmd>lua CHAD.Copy_relname(false)
vnoremap <buffer> <nowait> <silent> <C-Y> <Cmd>lua CHAD.Copy_relname(true)
nnoremap <buffer> <nowait> <silent> <C-R> <Cmd>lua CHAD.Refresh(false)
vnoremap <buffer> <nowait> <silent> <C-R> <Cmd>lua CHAD.Refresh(true)
nnoremap <buffer> <nowait> <silent> <2-LeftMouse> <Cmd>lua CHAD.Secondary(false)
vnoremap <buffer> <nowait> <silent> <2-LeftMouse> <Cmd>lua CHAD.Secondary(true)
nnoremap <buffer> <nowait> <silent> <M-CR> <Cmd>lua CHAD.Tertiary(false)
vnoremap <buffer> <nowait> <silent> <M-CR> <Cmd>lua CHAD.Tertiary(true)
nnoremap <buffer> <nowait> <silent> <MiddleMouse> <Cmd>lua CHAD.Tertiary(false)
vnoremap <buffer> <nowait> <silent> <MiddleMouse> <Cmd>lua CHAD.Tertiary(true)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,fb:���
setlocal commentstring=
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'CHADTree'
setlocal filetype=CHADTree
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcqj
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=no
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=%#lualine_a_inactive#\ ~/parlbomb\ %#lualine_transitional_lualine_a_inactive_to_lualine_c_normal#%#lualine_c_normal#%=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'CHADTree'
setlocal syntax=CHADTree
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-1
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal winfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
balt ~/parlbomb/home/programs/neovim/plugins/telescope.nix
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'nix'
setlocal filetype=nix
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcqj
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=nvim_treesitter#indent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=v:lua.vim.lsp.omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=yes
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=noplainbuffer
setlocal statuscolumn=
setlocal statusline=%#lualine_a_command#\ COMMAND\ %#lualine_transitional_lualine_a_command_to_lualine_b_normal#%#lualine_b_normal#\ \ master\ %<%#lualine_c_normal#\ polkit.nix\ %#lualine_c_normal#%=%#lualine_x_filetype_DevIconNix_command#\ \ %#lualine_c_normal#nix\ %#lualine_b_normal#\ Top\ %#lualine_transitional_lualine_a_command_to_lualine_b_normal#%#lualine_a_command#\ \ 09:40\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=v:lua.vim.lsp.tagfunc
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=%#barbecue_normal#\ %#barbecue_dirname#home%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %#barbecue_dirname#programs%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %@v:lua.require'barbecue.ui.mouse'.navigate_1025_1_0@%#barbecue_fileicon_Nix#%#barbecue_normal#\ %#barbecue_basename#polkit.nix%X%#barbecue_normal#\ %#barbecue_separator#%#barbecue_normal#\ %@v:lua.require'barbecue.ui.mouse'.navigate_1025_1_0@%#barbecue_context_function#%#barbecue_normal#\ %#barbecue_context#(anonymous\ lambda)%X%#barbecue_normal#%=%#barbecue_normal#\ 
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 02|
wincmd w
2wincmd w
wincmd =
tabnext 3
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
