class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.26.0/bb-v0.26.0-darwin-arm64.tar.gz"
      sha256 "1b3f90ffff2caf9ea0cc39de935c754e1d26838ab730e2e4212c0eb6d0002c62"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.26.0/bb-v0.26.0-darwin-arm64.tar.gz"
      sha256 "1b3f90ffff2caf9ea0cc39de935c754e1d26838ab730e2e4212c0eb6d0002c62"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.26.0/bb-v0.26.0-linux-amd64.tar.gz"
    sha256 "d19da137e77baf795df2b48326fe0b7aa7f5916cfa8e3aa6390613ac22682b60"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
