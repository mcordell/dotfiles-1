class Homebrew
  class << self
    def setup
      install_or_update_homebrew
    end

    def update
      puts 'Updating Homebrew'

      `brew update && brew upgrade`
    end

    private

    def install_or_update_homebrew
      puts 'Installing or updating homebrew'

      exists? ? update : install
    end

    def exists?
      system 'which brew > /dev/null'
    end

    def install
      puts 'Installing Homebrew'

      system('ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"')

      puts 'Finished installing Homebrew.'

      puts 'Running brew doctor'

      system('brew doctor')

      install_packages
    end

    def install_packages
      puts 'Installing packages'

      `brew install \
      git \
      memcached \
      phantomjs \
      postgresql \
      qt \
      vim
      `
    end
  end
end
