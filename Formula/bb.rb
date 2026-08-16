class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.23.1/bb-v0.23.1-darwin-arm64.tar.gz"
      sha256 "b2e82a7238b6eee00e66a635678b60f08be8f284ae725af70dfaea17e507ed72"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.23.1/bb-v0.23.1-darwin-arm64.tar.gz"
      sha256 "b2e82a7238b6eee00e66a635678b60f08be8f284ae725af70dfaea17e507ed72"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.23.1/bb-v0.23.1-linux-amd64.tar.gz"
    sha256 "fb8e9ae0ed0d3dfc2b3036fd03c183e76c458c1379ac76f9ce616bdbd17c7eaf"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
