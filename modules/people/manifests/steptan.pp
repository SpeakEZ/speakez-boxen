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
  include autojump
  include caffeine
  include virtualbox
  include iterm2::dev
  include notational_velocity::nvalt
  include mongodb
  include wget

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

  # Heroku accounts plugin
  heroku::plugin { 'accounts':
    source => 'ddollar/heroku-accounts'
  }

  # repository { $dotfiles:
  #   source  => 'geothird/dotfiles'
  # }
}
