class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.14.0/bb-v0.14.0-darwin-arm64.tar.gz"
      sha256 "96c1118025731d70e9ddda716676b7e6edd471cd944a6bdde849195ccac617ed"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.14.0/bb-v0.14.0-darwin-arm64.tar.gz"
      sha256 "96c1118025731d70e9ddda716676b7e6edd471cd944a6bdde849195ccac617ed"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.14.0/bb-v0.14.0-linux-amd64.tar.gz"
    sha256 "7a2287c61ca994434dcc6cdab480bb9b07a3ed5d8f2693df08b96aeb2d82f849"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
