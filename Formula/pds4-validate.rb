class Pds4Validate < Formula
  desc "PDS4 Label Validation Tool"
  homepage "https://pds-engineering.jpl.nasa.gov/development/pds4/current/preparation/validate/index.html"
  url "https://pds.nasa.gov/software/pds4/preparation/validate-1.15.0-bin.tar.gz"
  sha256 "f2961c168e4367c7b3da77a25eaa7d2e88619181c4f8ad746d05eee32b4d4d6e"

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
