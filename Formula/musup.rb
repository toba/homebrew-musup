class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.5.1/musup_darwin_arm64.tar.gz"
  version "0.5.1"
  sha256 "3919fb15c3912a6079c03ec74f1a7f5cafe1cecde608d8c1fb0722cedf704bd1"
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
