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
      puts 'Installing homebrew'

      `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

      install_packages
    end

    def install_packages
      puts 'Installing packages'

      `brew install \
      ctags \
      gdbm \
      git \
      go \
      imagemagick \
      leiningen \
      libelf \
      libffi \
      libevent \
      libxml2 \
      libxslt \
      libyaml \
      memcached \
      node \
      phantomjs \
      postgresql \
      qt \
      reattach-to-user-namespace \
      the_silver_searcher \
      tmux \
      vim \
      wemux \
      wget \
      zsh
      `
    end
  end
end
