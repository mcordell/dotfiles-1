Dir['./rake_helpers/*.rb'].each { |file| require file }

namespace :dotfiles do
  task :bootstrap do
    FileEncryption.check

    Homebrew.setup

    Code.setup

    Ruby.setup

    Code.install_gems

    Ruby.rvm_warning
  end

  task :symlinks do
    [Zsh, Vim, Tmux, Tmuxinator, Git].each(&:set_symlinks)
  end

  task :plugins do
    [Zsh, Vim].each(&:setup)
  end

  task :update do
    Homebrew.setup

    Ruby.update

    Vim.update
  end
end
