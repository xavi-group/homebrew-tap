class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.23.0/bb-v0.23.0-darwin-arm64.tar.gz"
      sha256 "6ee097ed6e4e341437d1090185e7948d372f1e3ff97c3979d5d989e7a8bc40a3"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.23.0/bb-v0.23.0-darwin-arm64.tar.gz"
      sha256 "6ee097ed6e4e341437d1090185e7948d372f1e3ff97c3979d5d989e7a8bc40a3"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.23.0/bb-v0.23.0-linux-amd64.tar.gz"
    sha256 "131896c51b1355ec2b75fd31492c00e26d513d976c16cb71b05b8348dcde81fd"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
