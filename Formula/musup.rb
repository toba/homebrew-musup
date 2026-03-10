class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.4.0/musup_darwin_arm64.tar.gz"
  version "0.4.0"
  sha256 "d395fa638a5ead1ede80e211966432e67e389275500be7d925605a9ed171cf7f"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "musup"
  end

  test do
    assert_match "musup", shell_output("#{bin}/musup version")
  end
end
