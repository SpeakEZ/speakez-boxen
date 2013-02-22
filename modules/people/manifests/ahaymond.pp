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

  file { "${dotfiles}/.bashrc":
    ensure => link,
    target => "${home}/.bashrc"
  }
}