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
  include chrome::dev

  # SpeakEZ Projects
  include projects::all

  # SpeakEZ Projects
  include projects::speakez-rails

  $home     = "/Users/${::luser}"
  $sublime_home = "${home}/Library/Application\\ Support/Sublime\\ Text\\ 2/"

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

  # Create symlinks
  file { "${home}/.bashrc":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.bashrc"
  }

  file { "${home}/.emacs":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.emacs"
  }

  file { "${home}/.emacs.d":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.emacs.d"
  }

  file { "${home}/.irbrc":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.irbrc"
  }

  file { "${home}/.vimrc":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.vimrc"
  }

  # Dotfiles config
  repository { "${boxen::config::srcdir}/dotfiles":
    source  => 'geothird/dotfiles'
  }

  # Touch punch support for rails
  repository { "${boxen::config::srcdir}/touchpunch-rails":
    source => 'geothird/touchpunch-rails'
  }

  # Canvas lti gem
  repository { "${boxen::config::srcdir}/ims-lti":
    source => 'geothird/ims-lti'
  }

  # Linguist for adding syntax emojies etc gem
  repository { "${boxen::config::srcdir}/linguist":
    source => 'geothird/linguist'
  }

  # Charlock holmes for linquist
  repository { "${boxen::config::srcdir}/charlock_holmes":
    source => 'geothird/charlock_holmes'
  }

  # Slugs for urls gem
  repository { "${boxen::config::srcdir}/friendly_id":
    source => 'geothird/friendly_id'
  }

  # Add list positioning to a model gem
  repository { "${boxen::config::srcdir}/acts_as_list":
    source => 'geothird/acts_as_list'
  }

  # Rails object versioning gem
  repository { "${boxen::config::srcdir}/vestal_versions":
    source => 'geothird/vestal_versions'
  }

  # Hubot scripts
  repository { "${boxen::config::srcdir}/hubot-scripts":
    source => 'geothird/hubot-scripts'
  }

  # Add RubyTest to Sublime text packages
  repository { "$sublime_home/Packages/RubyTest":
    source => 'maltize/sublime-text-2-ruby-tests'
  }

  # Add Beautify Ruby to sublime text packages
  repository { "$sublime_home/Packages/BeautifyRuby":
    source => 'CraigWilliams/BeautifyRuby'
  }
}