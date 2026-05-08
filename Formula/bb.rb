class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.1/bb-v0.6.1-darwin-arm64.tar.gz"
      sha256 "77386a31ac220e018501ad528c8846ce7ec19f291ab11353b41b0ab328cfe52c"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.1/bb-v0.6.1-darwin-arm64.tar.gz"
      sha256 "77386a31ac220e018501ad528c8846ce7ec19f291ab11353b41b0ab328cfe52c"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.1/bb-v0.6.1-linux-amd64.tar.gz"
    sha256 "08b23097a08d706344595be2399eb6971c62258641349b5b9b0c47a2be9f61ec"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
