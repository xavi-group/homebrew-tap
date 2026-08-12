class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.22.0/bb-v0.22.0-darwin-arm64.tar.gz"
      sha256 "7956bd32c31ef7c46df49e756037a2065c894889dd73248650652131c4cf2dbb"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.22.0/bb-v0.22.0-darwin-arm64.tar.gz"
      sha256 "7956bd32c31ef7c46df49e756037a2065c894889dd73248650652131c4cf2dbb"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.22.0/bb-v0.22.0-linux-amd64.tar.gz"
    sha256 "aed6fc8655c473cdc6823524a22285a201a4ae4869092cdec0c1965ebab65528"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
