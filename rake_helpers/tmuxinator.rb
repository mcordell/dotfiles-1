class Tmuxinator
  class << self
    def set_symlinks
      puts 'setting tmuxinator links'
      `ln -s #{tmuxinator_files} ~/.tmuxinator`
    end

    private

    def tmuxinator_files
      '$HOME/.dotfiles/tmuxinator/'
    end
  end
end
