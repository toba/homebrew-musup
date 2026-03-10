class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.6.1/musup_darwin_arm64.tar.gz"
  version "0.6.1"
  sha256 "3280a9705955483754cd41f5cfab884c3ed080fa2965a46ed7aaa45ed16c0763"
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
