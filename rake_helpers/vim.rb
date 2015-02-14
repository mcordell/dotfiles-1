class Vim
  class << self
    def set_symlinks
      puts 'setting vim symlinks'
      `ln -s "#{vim_config}" "$HOME/.vimrc"`
    end

    def setup
      puts 'make the tmp folder for swap files'
      `mkdir ~/.tmp`

      puts 'installing Vundle, the package manager'
      `git clone https://github.com/gmarik/Vundle.vim.git \
        ~/.vim/bundle/Vundle.vim`

      puts 'downloading packages'
      `vim -c "PluginInstall" -c "q" -c "q"`

      puts 'installing command-t'
      `cd ~/.vim/bundle/command-t/ruby/command-t`
      `ruby extconf.rb && make`
    end

    def update
      puts 'updating Vim'
      `brew reinstall --HEAD https://raw.github.com/vim/vim/master/vim.rb`
    end

    private

    def vim_config
      '$HOME/.dotfiles/vim/vimrc'
    end
  end
end
