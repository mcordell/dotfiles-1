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

    def rvm_warning
      puts "Please run 'rvm use ruby-#{Code.ruby_version}' in your console to complete installation."
    end

    private

    def install_rvm
      puts 'Installing RVM'
      `\\curl -sSL https://get.rvm.io | bash -s stable`
      system "source #{Dir.home}/.rvm/scripts/rvm"
      puts 'RVM installed'
    end

    def install_latest_ruby
      puts 'Installing latest ruby. WARNING this takes a while.'
      system "bash --login -i -c 'rvm install ruby-#{Code.ruby_version}'"
    end

    def use_latest_ruby
      puts 'using the latest ruby'
    end

    def install_global_gems
      puts 'Installing global gems'

      `gem install bundler \
        gem-ctags \
        rubygems-bundler \
        rake \
        byebug \
        tmuxinator`
    end
  end
end
