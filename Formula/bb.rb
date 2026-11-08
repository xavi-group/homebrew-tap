class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.10.0/bb-v1.10.0-darwin-arm64.tar.gz"
      sha256 "71f55ddfde89e2ca808111210f5bc3327808d0e8060a413142ac66eca49aa80a"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.10.0/bb-v1.10.0-darwin-arm64.tar.gz"
      sha256 "71f55ddfde89e2ca808111210f5bc3327808d0e8060a413142ac66eca49aa80a"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.10.0/bb-v1.10.0-linux-amd64.tar.gz"
    sha256 "1a85c875f385b0ea5b0f413175d13d6de1f372bf053c820b79ee698959dea348"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
