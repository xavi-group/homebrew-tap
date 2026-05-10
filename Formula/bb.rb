class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.2/bb-v0.7.2-darwin-arm64.tar.gz"
      sha256 "319f31c764dcb63a56df52222cb18c7a7f9ab73d294a6fdc95059bec8c2e4aa0"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.2/bb-v0.7.2-darwin-arm64.tar.gz"
      sha256 "319f31c764dcb63a56df52222cb18c7a7f9ab73d294a6fdc95059bec8c2e4aa0"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.2/bb-v0.7.2-linux-amd64.tar.gz"
    sha256 "4febb4475a13d4b6288a771eea326c18fe7eaecb356656a71fca2aa16618aac8"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
