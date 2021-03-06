set runtimepath+=~/.vim/

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin($HOME . "/.vim/plugged")
  " Enhancements

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " Editing
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/vim-easy-align'
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  Plug 'editorconfig/editorconfig-vim'
    " ensure works well with `tpope/vim-fugitive`
    let g:EditorConfig_exclude_patterns = ['fugitive://.*']

  " Colors
  Plug 'arcticicestudio/nord-vim'

  " UI layout

  " Default start screen
  Plug 'mhinz/vim-startify'

  " Status line
  Plug 'itchyny/lightline.vim'
  Plug 'mengelbrecht/lightline-bufferline'
  Plug 'maximbaz/lightline-ale'

  " Tag browser
  Plug 'liuchengxu/vista.vim'

  " Focus mode

  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/goyo.vim'

  " Navigation

  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

  Plug 'christoomey/vim-tmux-navigator'

  " IDE features

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'dense-analysis/ale'

  " Syntax

  Plug 'rust-lang/rust.vim'
    let g:rustfmt_autosave = 1

  Plug 'pangloss/vim-javascript'
    " Enables syntax highlighting for JSDocs.
    let g:javascript_plugin_jsdoc = 1

  Plug 'leafgarland/typescript-vim'

  Plug 'posva/vim-vue'
    " Only highlight HTML, JavaScript, and CSS
    " No Pug, SCSS, etc.
    let g:vue_pre_processors = []

  Plug 'mattn/emmet-vim'
    " Trigger with `,,`
    let g:user_emmet_leader_key=','

  Plug 'kylef/apiblueprint.vim'

  " Plug 'kovetskiy/sxhkd-vim'
  Plug 'baskerville/vim-sxhkdrc'

  Plug 'elixir-editors/vim-elixir'

  Plug 'dart-lang/dart-vim-plugin'
   " let g:dart_style_guide = 2
   " let g:dart_format_on_save = 1

  Plug 'thosakwe/vim-flutter'

  Plug 'jparise/vim-graphql'

  " Snippets
  Plug 'honza/vim-snippets'

  " Engine
  " Plug 'SirVer/ultisnips'
  "   let g:UltiSnipsSnippetDirectories = ["UltiSnips", "snips"]
  "   let g:UltiSnipsExpandTrigger='<Nop>'
  "   " let g:UltiSnipsJumpForwardTrigger = '<TAB>'
  "   " let g:UltiSnipsJumpBackwardTrigger = '<S-TAB>'
  "   let g:coc_snippet_next = '<TAB>'
  "   let g:coc_snippet_prev = '<S-TAB>'


  " load this last
  Plug 'ryanoasis/vim-devicons'

call plug#end()
