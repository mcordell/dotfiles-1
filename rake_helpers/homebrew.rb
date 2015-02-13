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

      system 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'

      Output.with_linebreak 'Finished installing Homebrew.'

      Output.with_linebreak 'Running brew doctor'

      system 'brew doctor'

      Output.linebreak
    end

    def update
      Output.with_linebreak 'Updating Homebrew'

      system 'brew update && brew upgrade'

      Output.linebreak
    end


    def install_packages
      Output.with_linebreak 'Installing missing packages (if any).'

      packages = [
        'git',
        'memcached',
        'phantomjs',
        'postgresql',
        'qt',
        'vim',
        'tmux',
        'wemux'
      ]

      packages.each do |package|
        unless system "brew list #{package} &> /dev/null"
          Output.with_linebreak "Installing #{package}."
          Output.with_linebreak "brew install #{package}"
          Output.with_linebreak "Installation of #{package} complete."
        end
      end

      Output.with_linebreak 'Done installing packages.'
    end
  end
end
