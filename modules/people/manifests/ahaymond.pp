class people::ahaymond {
  include stdlib
  include sysctl
  include virtualbox
  include sublime_text_2
  include chrome
  include caffeine
#  include chrome::dev

  $home     = "/Users/${::luser}"
  $code       = "${home}/code"
  $dotfiles = "${code}/dotfiles"

  package {
    [
      'bash-completion',
      'htop-osx'
    ]:
  }

  # SpeakEZ Projects
  include projects::all


  $home     = "/Users/${::luser}"
  $sublime_home = "${home}/Library/Application\\ Support/Sublime\\ Text\\ 2/"

  # Homebrew packages to install
  package {
    [
      'bash-completion',
      'htop-osx'
    ]:
  }

  # Dotfiles config
  repository { "${boxen::config::srcdir}/dotfiles":
    source  => 'ahaymond/dotfiles'
  }

  # Create Symlinks
  file { "${home}/.bashrc":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.bashrc"
  }

  file { "${home}/.gitignore":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.gitignore"
  }

  file { "${home}/.irbrc":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.irbrc"
  }

  file { "${home}/.vimrc":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.vimrc"
  }

  file { "${home}/git-completion.bash":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/git-completion.bash"
  }

  # Add RubyTest to Sublime text packages
  repository { "$sublime_home/Packages/RubyTest":
    source => 'maltize/sublime-text-2-ruby-tests'
  }
}