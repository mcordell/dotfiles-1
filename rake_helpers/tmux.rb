class Tmux
  class << self
    def set_symlinks
      `ln -s #{tmux_config} ~/.tmux.conf`
    end

    private

    def tmux_config
      '$HOME/.dotfiles/tmux/tmux.conf'
    end
  end
end
