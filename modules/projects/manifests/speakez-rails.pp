class projects::speakez-rails {
  include ruby
  include icu4c
  include phantomjs
  include stdlib
  include mysql
  include postgresql
  include imagemagick
  include propane

  heroku::plugin { 'accounts':
	  source => 'ddollar/heroku-accounts'
	}

  heroku::plugin { 'accounts':
	  source => 'ddollar/heroku-accounts'
	}

  boxen::project { 'speakez-rails':
    nginx         => true,
    ruby          => '1.9.3',
    source        => 'SpeakEZ/speakez-rails'
  }
}
