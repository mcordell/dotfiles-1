" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle (required)!
Plugin 'gmarik/vundle'

" :Nyancat for an awesome surprise!
Plugin 'koron/nyancat-vim'

" Color themes
Plugin 'flazz/vim-colorschemes'

" Enable support for tmux
Plugin 'jgdavey/tslime.vim'

" Autocomplete filenames with fuzzy file search
Plugin 'wincent/Command-T'

" A long list of defaults
Plugin 'tpope/vim-sensible'

" Autocomplete previously written words with <Tab>
Plugin 'ervandew/supertab'

" Toggle commenting, currently aliased to <leader>gc
Plugin 'tomtom/tcomment_vim'

" Extend the dot macro by letting plugins use it
Plugin 'tpope/vim-repeat'

" Easily add surroundings in normal mode
Plugin 'tpope/vim-surround'

" Extra keymappings using brackets
Plugin 'tpope/vim-unimpaired'

" Syntax Highlighting for languages and libraries
Plugin 'pangloss/vim-javascript'
Plugin 'slim-template/vim-slim.git'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'blackrush/vim-gocode'
Plugin 'mv/mv-vim-nginx'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'

" Automatically add an 'end' to ruby code
Plugin 'tpope/vim-endwise'

" Create your own text objects
Plugin 'kana/vim-textobj-user'

" Plugin to run rspec commands
Plugin 'thoughtbot/vim-rspec'

" Custom ruby text objects
Plugin 'nelstrom/vim-textobj-rubyblock'

" REPL for Clojure
Plugin 'tpope/vim-fireplace'

" Support for Java Classpaths (also used for Clojure)
Plugin 'tpope/vim-classpath'

" Cache files (required for vim-snipmate below)
Plugin 'MarcWeber/vim-addon-mw-utils'
" Utility functions for snipmate
Plugin 'tomtom/tlib_vim'
" Implement snippets like TextMate
Plugin 'garbas/vim-snipmate'
" Default snippets
Plugin 'honza/vim-snippets'

" Search with the silver searcher
Plugin 'rking/ag.vim'

" Align hashes, .csv files and more. Mapped to <CR> in visual mode
Plugin 'junegunn/vim-easy-align'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

