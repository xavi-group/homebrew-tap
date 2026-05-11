class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.4/bb-v0.7.4-darwin-arm64.tar.gz"
      sha256 "a8bad4fe0b9f9e8c2e00ebfd85ddb33a12a6467f37bb7e693b2c60f24fa8b0aa"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.4/bb-v0.7.4-darwin-arm64.tar.gz"
      sha256 "a8bad4fe0b9f9e8c2e00ebfd85ddb33a12a6467f37bb7e693b2c60f24fa8b0aa"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.4/bb-v0.7.4-linux-amd64.tar.gz"
    sha256 "96b3b8ce0709072b28299b5af34b2022a0224c149eb45a2cb249df6241a5f229"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
