class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.0/bb-v0.6.0-darwin-arm64.tar.gz"
      sha256 "194ae6cdd35b272eea97544b5a0565b9ede6ed1bc87737ddd103036797b74fad"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.0/bb-v0.6.0-darwin-arm64.tar.gz"
      sha256 "194ae6cdd35b272eea97544b5a0565b9ede6ed1bc87737ddd103036797b74fad"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.0/bb-v0.6.0-linux-amd64.tar.gz"
    sha256 "7e12ccc6c9263b5b6ee0a74683a1d63a22ec02f78f1249573a5b6d1af1c9ed1f"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
