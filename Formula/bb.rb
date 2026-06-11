class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.0/bb-v0.16.0-darwin-arm64.tar.gz"
      sha256 "88b5f215bd7fb3e9ef6f55b7a68b77f9a31b44915dbc69be53674f99e33f8ede"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.0/bb-v0.16.0-darwin-arm64.tar.gz"
      sha256 "88b5f215bd7fb3e9ef6f55b7a68b77f9a31b44915dbc69be53674f99e33f8ede"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.0/bb-v0.16.0-linux-amd64.tar.gz"
    sha256 "a9201574a9315c33c90092d2a1cbdea15bd55f1e4c6b466577e5170265474c24"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
