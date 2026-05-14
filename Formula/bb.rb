class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.9.0/bb-v0.9.0-darwin-arm64.tar.gz"
      sha256 "1e07c06da687d3ecda0f875dc6ca842e80d85906f1c7686988d0e46eaaee7686"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.9.0/bb-v0.9.0-darwin-arm64.tar.gz"
      sha256 "1e07c06da687d3ecda0f875dc6ca842e80d85906f1c7686988d0e46eaaee7686"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.9.0/bb-v0.9.0-linux-amd64.tar.gz"
    sha256 "1b7c21d29e9457d41113cff59dc3698349b593d1d44c4054d3c28b7c081ec8bf"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
