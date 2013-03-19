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

  # SpeakEZ Projects
  include projects::all

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

}
