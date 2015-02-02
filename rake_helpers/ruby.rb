class Ruby
  class << self
    def setup
      install_rvm

      install_latest_ruby

      install_global_gems
    end

    def update
      install_latest_ruby
    end

    private

    def install_rvm
      puts 'installing rvm'
      `\\curl -sSL https://get.rvm.io | bash -s stable`
      system "source #{Dir.home}/.rvm/scripts/rvm"
    end

    def install_latest_ruby
      puts 'installing latest ruby. WARNING this takes a while.'
      system "bash --login -i -c 'rvm install ruby-#{Code.ruby_version}'"
      system "bash --login -i -c 'rvm use #{Code.ruby_version}'"
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
