class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.10.0/musup_darwin_arm64.tar.gz"
  version "0.10.0"
  sha256 "93b58b41261ce0af63e8cec93b83a93f07000ee3557388c98342fff5fda25dd2"
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
