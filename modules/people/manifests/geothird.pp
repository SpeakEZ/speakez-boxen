class people::geothird {
  include stdlib
  include sysctl
  include emacs
  include sparrow
  include minecraft
  include virtualbox
  include things
  include vlc
  include sublime_text_2
  include chrome
#  include chrome::dev

  $home     = "/Users/${::luser}"
  $code     = "${home}/code"
  $dotfiles = "${code}/dotfiles"

  # Homebrew packages to install
  package {
    [
      'bash-completion',
      'htop-osx'
    ]:
  }

  repository { $dotfiles:
    source  => 'geothird/dotfiles'
  }
}