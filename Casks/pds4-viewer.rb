cask 'pds4-viewer' do
  version '0.9'
  sha256 'f4c2c8d998b784e38ddb6d9e736011340a662c63b352a8d8e34ebf3e97f74a38'

  url 'http://pdssbn.astro.umd.edu/ftp/tools/pds4_viewer/0.9/PDS4_viewer_mac-0.9.zip'
  name 'PDS4 Viewer'
  homepage 'http://sbndev.astro.umd.edu/wiki/PDS4_Viewer'

  app 'pds4_viewer.app'
end
