cask 'pds4-viewer' do

  if MacOS.version <= '10.12'
    version '1.1'
    sha256 'f91f94658efc7b8cd7031e4220c2ed55bfb0a04eb055afcced661e1c28443393'

    url 'https://pdssbn.astro.umd.edu/ftp/tools/pds4_viewer/1.1/PDS4_viewer_mac10_6-1.1.zip'

    app 'pds4_viewer.app'
  else
    version '1.1'
    sha256 '2523f3381deb016cf90de055c280ea341923b807043c02acd1c4faa8929972a4'

    url 'https://pdssbn.astro.umd.edu/ftp/tools/pds4_viewer/1.1/PDS4_viewer_mac10_13-1.1.zip'

    app 'pds4_viewer.app'
  end

  name 'PDS4 Viewer'
  homepage 'http://sbndev.astro.umd.edu/wiki/PDS4_Viewer'

end
