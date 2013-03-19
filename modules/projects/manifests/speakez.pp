class projects::speakez {
  boxen::project { 'speakez':
    source        => 'SpeakEZ/speakez',
    notify        => Exec['install_speakator']
  }

	exec{'install_speakator':
	  refreshonly  => true,
	  command      => "bash -c 'gem install ${boxen::config::srcdir}/speakez/speakator/pkg/speakator-1.1.0.gem'",
	}
}
