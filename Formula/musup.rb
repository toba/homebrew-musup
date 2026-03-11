class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.10.1/musup_darwin_arm64.tar.gz"
  version "0.10.1"
  sha256 "f808a5d14151171434da5483c58e73a0175021af61acd98d681a6a95c1a8a61b"
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
