class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.13.0/bb-v0.13.0-darwin-arm64.tar.gz"
      sha256 "6f6eac97d98ec60298cc0748c9147b4f53450c3b7cef11889de1fa12957d5065"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.13.0/bb-v0.13.0-darwin-arm64.tar.gz"
      sha256 "6f6eac97d98ec60298cc0748c9147b4f53450c3b7cef11889de1fa12957d5065"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.13.0/bb-v0.13.0-linux-amd64.tar.gz"
    sha256 "008771eb540ba2fa0430084d909319bee1de1dcfc5bab5c48ba8f015d8b59975"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
