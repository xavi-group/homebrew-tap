class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.11.1/bb-v0.11.1-darwin-arm64.tar.gz"
      sha256 "dbbf9be6cd8d5a69c5e4a0db090e45bc2f7ac25695d874226e12332afd7ca10d"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.11.1/bb-v0.11.1-darwin-arm64.tar.gz"
      sha256 "dbbf9be6cd8d5a69c5e4a0db090e45bc2f7ac25695d874226e12332afd7ca10d"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.11.1/bb-v0.11.1-linux-amd64.tar.gz"
    sha256 "31f3f2a7fff97b55383b99bc5caa03a93482566e00c333c83dd2cb4cc39ccd8d"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
