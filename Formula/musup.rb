class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.10.2/musup_darwin_arm64.tar.gz"
  version "0.10.2"
  sha256 "1814dca9ba9f323d9c9bbbc89fb13b1a37aa63925e18a35580a12189a0bb61df"
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
