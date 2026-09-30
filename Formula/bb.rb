class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.4.0/bb-v1.4.0-darwin-arm64.tar.gz"
      sha256 "bf5066781a879dc06d3199708aa4c7354a54079cf03ddbcd1e36624154694c2d"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.4.0/bb-v1.4.0-darwin-arm64.tar.gz"
      sha256 "bf5066781a879dc06d3199708aa4c7354a54079cf03ddbcd1e36624154694c2d"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.4.0/bb-v1.4.0-linux-amd64.tar.gz"
    sha256 "77f9e367419ac0d3a2703f9bffa8a48b5b0a226e18a811c5df43d2a7167dd064"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
