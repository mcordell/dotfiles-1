class Homebrew
  class << self
    def setup
      exists? ? update : install

      install_packages
    end

    private

    def exists?
      system 'which brew > /dev/null'
    end

    def install
      puts 'Installing Homebrew.'

      system 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'

      puts 'Finished installing Homebrew.'

      puts 'Running brew doctor'

      system 'brew doctor'
    end

    def update
      puts 'Updating Homebrew'

      `brew update && brew upgrade`
    end


    def install_packages
      puts 'Installing missing packages (if any).'
      packages = [
        'git',
        'memcached',
        'phantomjs',
        'postgresql',
        'qt',
        'vim'
      ]

      packages.each do |package|
        unless system "brew list #{package} &> /dev/null"
          puts "Installing #{package}"
          system "brew install #{package}"
        end
      end
    end
  end
end
