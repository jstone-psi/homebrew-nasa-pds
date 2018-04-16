class Pds4Validate < Formula
  desc "PDS4 Label Validation Tool"
  homepage "https://pds.nasa.gov/pds4/software/validate/"
  url "ftp://pds.nasa.gov/pub/toplevel/2010/preparation/validate-1.12.0-bin.zip"
  sha256 "ffee5063ebfbbdbf54416b1cc0f4816d0a1429ed4ca0ab50709e0ff92d4fa2c7"

  depends_on :java => "1.7+"

  def install
    rm Dir["bin/*.{bat,cmd,dll,exe}"]
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
    lib.install_symlink Dir["#{libexec}/lib/*"]
    share.mkdir
    pkgshare.mkdir
    pkgshare.install Dir["#{libexec}/doc"]
  end

  test do
    system "#{bin}/validate -h"
  end
end
