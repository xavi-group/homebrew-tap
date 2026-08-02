class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.21.0/bb-v0.21.0-darwin-arm64.tar.gz"
      sha256 "95b714d8677a4c6d23bf1ef02de698a99f90a16ea17f069e6977c8136912cee3"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.21.0/bb-v0.21.0-darwin-arm64.tar.gz"
      sha256 "95b714d8677a4c6d23bf1ef02de698a99f90a16ea17f069e6977c8136912cee3"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.21.0/bb-v0.21.0-linux-amd64.tar.gz"
    sha256 "6714b5724ef368c2bbc2ab79920a08fe998f5d06e0fc1e0c03c2d9070c4d236f"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
