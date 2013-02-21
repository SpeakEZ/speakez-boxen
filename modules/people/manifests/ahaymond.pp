class people::ahaymond {
  include stdlib
  include sysctl
  include minecraft
  include virtualbox
  include sublime_text_2
  include chrome
#  include chrome::dev

  $home     = "/Users/${::luser}"
  $code       = "${home}/Documents"
  $dotfiles = "${code}/dotfiles"

  repository { $dotfiles:
    source  => 'ode/dotfiles'
  }
}