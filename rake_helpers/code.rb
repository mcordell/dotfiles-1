class Code
  class << self
    def setup
      copy_gemrc

      setup_git_directories

      system('git clone https://github.com/currica/web.git')
    end

    def install_gems
      puts 'Installing gems'
      Dir.chdir("#{Dir.home}/Code/Work/currica/web")
      #https://github.com/bundler/bundler/issues/925
      require 'bundler'
      Bundler.with_clean_env do
        system 'bundle install'
      end
      puts 'Gems installed'
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
