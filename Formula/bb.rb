class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.20.0/bb-v0.20.0-darwin-arm64.tar.gz"
      sha256 "d0ba8045efb3704c4ae11b2fd9baa17eb68fec59850c41b04e090c32a79d7b8d"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.20.0/bb-v0.20.0-darwin-arm64.tar.gz"
      sha256 "d0ba8045efb3704c4ae11b2fd9baa17eb68fec59850c41b04e090c32a79d7b8d"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.20.0/bb-v0.20.0-linux-amd64.tar.gz"
    sha256 "767ed4b3f2c5b135255f23e36148b0d533902995b7c99985aa4943cbd98190d3"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
