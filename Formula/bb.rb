class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.11.3/bb-v0.11.3-darwin-arm64.tar.gz"
      sha256 "bd3f953c89d59c85279f842d5c47102e76f5b398f2f053c9f32d4ecc9e528858"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.11.3/bb-v0.11.3-darwin-arm64.tar.gz"
      sha256 "bd3f953c89d59c85279f842d5c47102e76f5b398f2f053c9f32d4ecc9e528858"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.11.3/bb-v0.11.3-linux-amd64.tar.gz"
    sha256 "7e2026bafb90e49eb55868454669a09e742b448fb2355f080381e34edd7282fa"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
