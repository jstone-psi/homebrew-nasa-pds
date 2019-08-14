class Pds4Validate < Formula
  desc "PDS4 Label Validation Tool"
  homepage "https://pds-engineering.jpl.nasa.gov/development/pds4/current/preparation/validate/index.html"
  url "https://pds.nasa.gov/software/pds4/preparation/validate-1.14.0-bin.tar.gz"
  sha256 "96a0085425bfdf12fd32dc752b8549181419df0c068e807320cdf5a91e569295"

  depends_on :java => "1.8+"

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
