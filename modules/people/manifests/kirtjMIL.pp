class people::kirtjMIL {
  include stdlib
  include sysctl
  include sublime_text_2
  include chrome

  # include SpeakeEZ-Rails project
  include projects::speakez-rails

  $home     = "/Users/${::luser}"
  $sublime_home = "${home}/Library/Application\\ Support/Sublime\\ Text\\ 2/"

  # Add RubyTest to Sublime text packages
  repository { "$sublime_home/Packages/RubyTest":
    source => 'maltize/sublime-text-2-ruby-tests'
  }

  # Dotfiles config
  repository { "${boxen::config::srcdir}/dotfiles":
    source  => 'kirtjMIL/dotfiles'
  }

  # Create Symlinks
  file { "${home}/.bashrc":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.bashrc"
  }

  file { "${home}/.gitignore":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.gitignore"
  }

  file { "${home}/.irbrc":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.irbrc"
  }

  file { "${home}/.vimrc":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/.vimrc"
  }

  file { "${home}/git-completion.bash":
    ensure => link,
    target => "${boxen::config::srcdir}/dotfiles/git-completion.bash"
  }
}