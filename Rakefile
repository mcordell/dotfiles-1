Dir['./rake_helpers/*.rb'].each {|file| require file }

namespace :dotfiles do
  task :bootstrap do
    FileEncryption.check

    Homebrew.setup

    [Zsh, Vim, Tmux, Tmuxinator, Git].each do |klass|
      klass.set_symlinks
    end

    Code.setup

    [Homebrew, Zsh, Ruby, Vim].each { |klass| klass.setup }

    Code.install_gems
  end

  task :update do
    # Github.pull_master
    #
    # Homebrew.update
    #
    # Ruby.update
    #
    # Vim.update
  end
end
