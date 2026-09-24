class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.1.0/bb-v1.1.0-darwin-arm64.tar.gz"
      sha256 "1016e48f545472c84e3f8c911f9e07515272eb045a4d786002cbd6f9544ea6fe"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.1.0/bb-v1.1.0-darwin-arm64.tar.gz"
      sha256 "1016e48f545472c84e3f8c911f9e07515272eb045a4d786002cbd6f9544ea6fe"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.1.0/bb-v1.1.0-linux-amd64.tar.gz"
    sha256 "15d2530b7b04dc5079142ef8a6d4ec790d505377211ad6295b44e855a0656e4b"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
