class people::steptan {
  include stdlib
  include sysctl
  include minecraft
  include virtualbox
  include vlc
  include sublime_text_2
  include chrome
  include macvim
  include mysql
#  include chrome::dev

  # Include my projects
  include projects::speakez
  include projects::speakez-ios
  include projects::canvas-lms
  include projects::milbot

  $home     = "/Users/${::luser}"
  #$home     = "/Users/sfelt"
  $code     = "${home}/code"
  $dotfiles = "${code}/dotfiles"
  $rubyversion = '2.0.0'

  # Homebrew packages to install
  package {
    [
      'bash-completion',
      'htop-osx'
    ]:
  }

  # repository { $dotfiles:
  #   source  => 'geothird/dotfiles'
  # }
}
