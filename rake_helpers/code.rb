class Code
  class << self
    def setup
      setup_git_directories

      copy_gemrc

      `git clone https://github.com/currica/web.git`
    end

    def install_gems
      # Requires a change to web to work properly.
      # `bundle install`
    end

    def ruby_version
      # Assuming that dotfiles and web repos live in the same directory.
      f = IO.read(File.absolute_path('../web/.ruby-version'))
      f.lines[0].strip()
    end


    def setup_git_directories
      `mkdir ~/Code`
      `mkdir ~/Code/Work`
      `mkdir ~/Code/Work/currica`
      Dir.chdir("#{Dir.home}/Code/Work/currica/web")
    end

    def copy_gemrc
      `cp ruby/.gemrc #{Dir.home}/.gemrc`
    end
  end
end
