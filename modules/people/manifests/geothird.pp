class people::geothird {
  include stdlib
  include sysctl
  include emacs
  include sparrow
  include minecraft
  include virtualbox
  include things
  include sublime_text_2
  include chrome
#  include chrome::dev

  $home     = "/Users/${::luser}"
  $code       = "${home}/code"
  $dotfiles = "${code}/dotfiles"

  repository { $dotfiles:
    source  => 'geothird/dotfiles'
  }
}