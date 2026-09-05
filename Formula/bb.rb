class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.26.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.26.1/bb-v0.26.1-darwin-arm64.tar.gz"
      sha256 "be2236d0c104ccc1b63ed043b6e7f7d3cde68c4bab7735beaba2e68f57d3ed6f"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.26.1/bb-v0.26.1-darwin-arm64.tar.gz"
      sha256 "be2236d0c104ccc1b63ed043b6e7f7d3cde68c4bab7735beaba2e68f57d3ed6f"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.26.1/bb-v0.26.1-linux-amd64.tar.gz"
    sha256 "9fc6d77388c3ad81b53f1391132f432348f27e9ceeacd4b0ec748fd2d0757efd"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
