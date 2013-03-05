class people::oklandon {
  include stdlib
  include sysctl
  include sublime_text_2
  include chrome

  $home     = "/Users/landonyoung"
  $sublime_home = "${home}/Library/Application\\ Support/Sublime\\ Text\\ 2/"

  # Add RubyTest to Sublime text packages
  repository { "$sublime_home/Packages/RubyTest":
    source => 'maltize/sublime-text-2-ruby-tests'
  }
}