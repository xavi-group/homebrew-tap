class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.6.0/bb-v1.6.0-darwin-arm64.tar.gz"
      sha256 "a24602b466d1215a83429164b7a276bbc8a996add9bd84dc1de4956b5ff258f7"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.6.0/bb-v1.6.0-darwin-arm64.tar.gz"
      sha256 "a24602b466d1215a83429164b7a276bbc8a996add9bd84dc1de4956b5ff258f7"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.6.0/bb-v1.6.0-linux-amd64.tar.gz"
    sha256 "1d5e174a533ca8d4161bbde2deaee2d57617848288c4e4ab331db60fddd8d486"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
