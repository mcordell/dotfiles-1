class Code
  class << self
    def setup
      setup_git_directories

      copy_gemrc

      `git clone https://github.com/currica/web.git`
    end

    def install_gems
      `bundle install`
    end

    def ruby_version
      # Assuming that dotfiles and web repos live in the same directory.
      f = IO.read(File.absolute_path('../web/.ruby-version'))
      f.lines[0].strip()
    end

    private

    def setup_git_directories
      `mkdir ~/Code`
      `mkdir ~/Code/Work`
      `mkdir ~/Code/Work/currica`
      `cd ~/Code/Work/currica`
    end

    def copy_gemrc
      `cp .gemrc ~/.gemrc`
    end
  end
end
