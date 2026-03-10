class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.1.0/musup_darwin_arm64.tar.gz"
  version "0.1.0"
  sha256 "e10563c51c8cbb4e1f8667bfcb600ab08908e88ebb78d25f76ed9b8cefcea875"
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
