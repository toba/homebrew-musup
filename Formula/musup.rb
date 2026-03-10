class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.6.0/musup_darwin_arm64.tar.gz"
  version "0.6.0"
  sha256 "ddb01910f0b38eefc51de52fa4462fd287b64da6a391d98728c4de3fabd1e8d7"
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
