class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.11.0/musup_darwin_arm64.tar.gz"
  version "0.11.0"
  sha256 "48f8074fef16a624d6faf4c168c566b1616b341195ec65260a3e5363137a8030"
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
