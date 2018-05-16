class Pds4Validate < Formula
  desc "PDS4 Label Validation Tool"
  homepage "https://pds.nasa.gov/pds4/software/validate/"
  url "ftp://pds.nasa.gov/pub/toplevel/2010/preparation/validate-1.13.0-bin.zip"
  sha256 "38f9a56a60d9047ab876bf3b1ae67a2866053ed8230e9a902ef72c5df635310b"

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
    system "export JAVA_HOME=`/usr/libexec/java_home` && #{bin}/validate -h"
  end
end
