class Ruby
  class << self
    # Our philosophy is to always use the latest ruby we ensure the latest
    # ruby is used by sourcing `chruby ruby` in our ``~/.zshrc``
    def setup
      install_rvm

      install_latest_ruby

      install_global_gems
    end
    alias_method :update, :setup

    private

    def install_rvm
      puts 'installing rvm'
      `\curl -sSL https://get.rvm.io | bash -s stable`
      system "source #{Dir.home}/.rvm/scripts/rvm"
    end

    def install_latest_ruby
      puts 'installing latest ruby. WARNING this takes a while.'
      `ruby-install --no-reinstall ruby #{Code.ruby_version}`

      #TODO NOT WORKING
      `rvm use #{Code.ruby_version}`
    end

    def use_latest_ruby
      puts 'using the latest ruby'
    end

    def install_global_gems
      puts 'installing global gems'

      `gem install bundler \
        gem-ctags \
        rubygems-bundler \
        rake \
        byebug \
        tmuxinator`
    end
  end
end
