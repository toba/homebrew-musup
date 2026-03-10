class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.5.0/musup_darwin_arm64.tar.gz"
  version "0.5.0"
  sha256 "2b0b3cb0094fe94bf883e8b9ba9361b32e2cdf0fac86617e83f7e8aa6cfd3799"
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
