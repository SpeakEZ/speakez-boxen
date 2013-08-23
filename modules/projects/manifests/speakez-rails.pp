class projects::speakez-rails {
  include ruby
  include icu4c
  include phantomjs
  include stdlib
  include mysql
  include postgresql
  include propane

  boxen::project { 'speakez-rails':
    nginx         => true,
    ruby          => '2.0.0',
    redis         => true,
    source        => 'SpeakEZ/speakez-rails'
  }
}
