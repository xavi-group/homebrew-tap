class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.1.1/bb-v1.1.1-darwin-arm64.tar.gz"
      sha256 "34fa385cf3c8fd6957049b429b4a30236511f82ce73d4791d11bbd97881d15b1"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.1.1/bb-v1.1.1-darwin-arm64.tar.gz"
      sha256 "34fa385cf3c8fd6957049b429b4a30236511f82ce73d4791d11bbd97881d15b1"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.1.1/bb-v1.1.1-linux-amd64.tar.gz"
    sha256 "3c50b64283e252cb9dd66a2a0f0dcc6b6efdf593e18c3594d4294f1431775096"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
