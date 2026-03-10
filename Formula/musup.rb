class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.2.0/musup_darwin_arm64.tar.gz"
  version "0.2.0"
  sha256 "7be382684f48516078684c0bdeeaafd377e84ac2a7ffd6571f7aaf98c69bf3eb"
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
