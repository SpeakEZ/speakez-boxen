class people::ahaymond {
  include stdlib
  include sysctl
  include minecraft
  include virtualbox
  include sublime_text_2
  include chrome
#  include chrome::dev

  $home     = "/Users/ode"
  $code       = "${home}/Documents"
  $dotfiles = "${code}/dotfiles"

  repository { $dotfiles:
    source  => 'ahaymond/dotfiles'
  }

  file { "${home}/.bashrc":
    ensure => link,
    target => "${dotfiles}/.bashrc"
  }
  # file { "${home}/.gemrc":
  #   ensure => link,
  #   target => "${dotfiles}/.gemrc"
  # }
  file { "${home}/.gitconfig":
    ensure => link,
    target => "${dotfiles}/.gitconfig"
  }
  file { "${home}/.gitignore":
    ensure => link,
    target => "${dotfiles}/.gitignore"
  }
  file { "${home}/.irbrc":
    ensure => link,
    target => "${dotfiles}/.irbrc"
  }
  file { "${home}/.vimrc":
    ensure => link,
    target => "${dotfiles}/.vimrc"
  }
}