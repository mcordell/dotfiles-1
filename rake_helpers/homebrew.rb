class Homebrew
  class << self
    def setup
      install_or_update_homebrew

      install_packages
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
      `brew`.match(%r(Example usage)) ? true : false
    end

    def install
      puts 'Installing homebrew'

      `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
    end

    def install_packages
      puts 'Installing packages'

      `brew install \
      phantomjs \
      reattach-to-user-namespace \
      the_silver_searcher \
      tmux \
      wget \
      git \
      memcached \
      autoconf \
      automake \
      go \
      imagemagick \
      leiningen \
      libelf \
      libevent \
      libxml2 \
      libxslt \
      openssl \
      postgresql \
      chruby \
      ruby-build \
      node \
      zsh \
      gdbm \
      libffi \
      ruby-install \
      libyaml \
      openssl \
      readline \
      vim \
      wemux \
      ctags \
      qt
      `
    end
  end
end
