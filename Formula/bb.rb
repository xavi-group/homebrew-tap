class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.0/bb-v0.7.0-darwin-arm64.tar.gz"
      sha256 "c4cbe6269a9b1c263bc248fa9751a0572b078eb54bc06056a9e4552d3f5c9f2e"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.0/bb-v0.7.0-darwin-arm64.tar.gz"
      sha256 "c4cbe6269a9b1c263bc248fa9751a0572b078eb54bc06056a9e4552d3f5c9f2e"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.0/bb-v0.7.0-linux-amd64.tar.gz"
    sha256 "edab0f5d6a88d729e62a55b12edfda79d60387f1a5b926384345bbdff42b5a61"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
