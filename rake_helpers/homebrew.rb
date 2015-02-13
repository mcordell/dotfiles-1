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
      Output.with_linebreak 'Installing Homebrew.'

      Output.system_with_linebreak 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'

      Output.with_linebreak 'Finished installing Homebrew.'

      Output.with_linebreak 'Running brew doctor'

      Output.system_with_linebreak 'brew doctor'
    end

    def update
      Output.with_linebreak 'Updating Homebrew'

      Output.system_with_linebreak 'brew update && brew upgrade'
    end


    def install_packages
      Output.with_linebreak 'Installing missing packages (if any).'

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
          Output.with_linebreak "Installing #{package}."
          Output.system_with_linebreak "brew install #{package}"
        end
      end

      Output.with_linebreak 'Done installing packages.'
    end
  end
end
