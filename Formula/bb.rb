class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.25.0/bb-v0.25.0-darwin-arm64.tar.gz"
      sha256 "e35f2073873d65619631a319e2ed2c526dfcbdd5784f18e84a0525540423cec9"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.25.0/bb-v0.25.0-darwin-arm64.tar.gz"
      sha256 "e35f2073873d65619631a319e2ed2c526dfcbdd5784f18e84a0525540423cec9"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.25.0/bb-v0.25.0-linux-amd64.tar.gz"
    sha256 "ec6fc6c5f038a858dab90d46af350f3446bcb791503a569610233c6e26d85ce6"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
