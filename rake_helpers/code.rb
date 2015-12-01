class Code
  class << self
    def setup
      copy_gemrc

      setup_git_directories

      Output.system_with_linebreak 'git clone https://github.com/currica/web.git'
    end

    def install_gems
      Output.with_linebreak 'Installing gems'

      # https://github.com/bundler/bundler/issues/925
      require 'bundler'
      Bundler.with_clean_env do
        Output.system_with_linebreak %(
          bash --login -i -c 'rvm use #{Code.ruby_version};
          cd #{q_centrix_dir}/web; bundle install'
        )
      end

      Output.with_linebreak 'Gems installed'
    end

    def ruby_version
      f = IO.read("#{q_centrix_dir}/web/.ruby-version")
      f.lines[0].strip
    end

    def setup_git_directories
      `mkdir -p #{q_centrix_dir}`
      Dir.chdir(q_centrix_dir)
    end

    def q_centrix_dir
      "#{Dir.home}/Code/Work/q-centrix"
    end

    def copy_gemrc
      # Run from the dotfiles repo
      `cp ruby/.gemrc #{Dir.home}/.gemrc`
    end
  end
end
