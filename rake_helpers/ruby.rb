class Ruby
  class << self
    def setup
      install_rvm

      install_latest_ruby

      install_bundler
    end

    def update
      install_latest_ruby
    end

    def rvm_warning
      Output.with_linebreak %(
        Please run 'source ~/.profile' in your console to complete installation.
      )
    end

    private

    def install_rvm
      Output.with_linebreak 'Installing RVM.'
      `\\curl -sSL https://get.rvm.io | bash -s stable`
      Output.system_with_linebreak "source #{Dir.home}/.rvm/scripts/rvm"
      Output.with_linebreak 'RVM installed.'
    end

    def install_latest_ruby
      Output.with_linebreak 'Installing latest ruby. This takes a while.'
      Output.system_with_linebreak %(
        bash --login -i -c 'rvm install ruby-#{Code.ruby_version}'
      )
    end

    def use_latest_ruby
      Output.with_linebreak 'Using the latest ruby.'
    end

    def install_bundler
      Output.with_linebreak 'Installing bundler'

      Output.system_with_linebreak 'gem install bundler'
    end
  end
end
