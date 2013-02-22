class projects::milbot {
  boxen::project { 'milbot':
  	nodejs => '0.8',
  	redis  => true,
    source => 'SpeakEZ/milbot'
  }
}
