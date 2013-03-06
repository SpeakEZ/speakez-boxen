class people::ahaymond {
  include stdlib
  include sysctl
  include virtualbox
  include sublime_text_2
  include chrome
  include caffeine


  # SpeakEZ Projects
  include projects::all


  $home     = "/Users/${::luser}"
  $code       = "${home}/code"
  $dotfiles = "${code}/dotfiles"

  package {
    [
      'bash-completion',
      'htop-osx'
    ]:
  }

  file { "${code}":
    ensure => "directory"
  }

  repository { $dotfiles:
    source  => 'ahaymond/dotfiles'
  }

  file { "${home}/.bashrc":
    ensure => link,
    target => "${dotfiles}/.bashrc"
  }
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