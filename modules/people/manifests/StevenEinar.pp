class people::StevenEinar {
  include stdlib
  include sysctl
  include virtualbox
  include sublime_text_2
  include chrome

  # include SpeakeEZ-Rails project
  include projects::speakez-rails

  #$home     = "/Users/${::luser}"
  #$sublime_home = "${home}/Library/Application\sSupport/Sublime\sText\s2/"

  package {
    [
      'bash-completion'
      #'htop-osx'
    ]:
  }

  # Add RubyTest to Sublime text packages
  #repository { "$sublime_home/Packages/RubyTest":
  #  source => 'maltize/sublime-text-2-ruby-tests'
  #}
}
