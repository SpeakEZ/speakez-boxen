class projects::canvas-lms {
  include postgresql

  boxen::project { 'canvas-lms':
    nginx         => true,
    ruby          => '1.9.3',
    source        => 'SpeakEZ/canvas-lms'
  }
  # Required brew packages
  package {
    [
      'libxmlsec1',
      'libgpg-error',
      'libgcrypt'
    ]:
  }
}
