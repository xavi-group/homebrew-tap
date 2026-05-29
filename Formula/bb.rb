class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.12.0/bb-v0.12.0-darwin-arm64.tar.gz"
      sha256 "0bff7ac8fc72f2758ca2bf3022f936ffd88521f9476cc5c3cf03c5c5fe5df1ec"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.12.0/bb-v0.12.0-darwin-arm64.tar.gz"
      sha256 "0bff7ac8fc72f2758ca2bf3022f936ffd88521f9476cc5c3cf03c5c5fe5df1ec"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.12.0/bb-v0.12.0-linux-amd64.tar.gz"
    sha256 "287ff3f8635fd173a0cbefd4516f830ac17b9530e1567426c863b20043662495"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
