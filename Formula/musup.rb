class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.3.0/musup_darwin_arm64.tar.gz"
  version "0.3.0"
  sha256 "a6438f3a4af98587f0dfb6fff985ebe897188c25cf6481a2184cf546a11d74b1"
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
