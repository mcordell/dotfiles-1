class Code
  class << self
    def setup
      copy_gemrc

      setup_git_directories

      system('git clone https://github.com/currica/web.git')

      install_gems
    end

    def install_gems
      Dir.chdir("#{Dir.home}/Code/Work/currica/web")
      system('bundle install')
    end

    def ruby_version
      f = IO.read("#{Dir.home}/Code/Work/currica/web/.ruby-version")
      f.lines[0].strip()
    end


    def setup_git_directories
      `mkdir ~/Code`
      `mkdir ~/Code/Work`
      `mkdir ~/Code/Work/currica`
      Dir.chdir("#{Dir.home}/Code/Work/currica")
    end

    def copy_gemrc
      # Run from the dotfiles repo
      `cp ruby/.gemrc #{Dir.home}/.gemrc`
    end
  end
end
