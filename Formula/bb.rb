class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.5.0/bb-v1.5.0-darwin-arm64.tar.gz"
      sha256 "097e926d74fd18375a204d9de341901e0958e5de7a26f420f42dc5f88395b733"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.5.0/bb-v1.5.0-darwin-arm64.tar.gz"
      sha256 "097e926d74fd18375a204d9de341901e0958e5de7a26f420f42dc5f88395b733"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.5.0/bb-v1.5.0-linux-amd64.tar.gz"
    sha256 "8b164084837c8937f93e9a39331de6cbbeedb2f044a7d97fb4b71ffaba2a22ad"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
