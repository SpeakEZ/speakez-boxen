class people::captbrogers {
  include stdlib
  include sysctl
  include minecraft
  include virtualbox
  include vlc
  include sublime_text_2
  include chrome

	exec { "set global ruby version":
    command => "rbenv global ${rubyversion}"
  }
}