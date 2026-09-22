class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.0.0/bb-v1.0.0-darwin-arm64.tar.gz"
      sha256 "b2d4da609438da9499d9abae93d0d65fcfe1dad2e7e431beed895678d1efeb3a"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.0.0/bb-v1.0.0-darwin-arm64.tar.gz"
      sha256 "b2d4da609438da9499d9abae93d0d65fcfe1dad2e7e431beed895678d1efeb3a"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.0.0/bb-v1.0.0-linux-amd64.tar.gz"
    sha256 "6480ec73822c1e52ad6cd64f4cd4c3e10c08aa7b2e57fe94f0c4c72321975b46"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
