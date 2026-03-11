class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.9.0/musup_darwin_arm64.tar.gz"
  version "0.9.0"
  sha256 "5ad80ad8b640c7f82c08a8e053e30f984058ed3c82f3deae4e2c0a7c1ac1617d"
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
