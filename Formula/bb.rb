class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.16.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.2/bb-v0.16.2-darwin-arm64.tar.gz"
      sha256 "29d98a1e4961669ac821e331cd514c8e17fed2e2af3278c83626998a083520ac"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.2/bb-v0.16.2-darwin-arm64.tar.gz"
      sha256 "29d98a1e4961669ac821e331cd514c8e17fed2e2af3278c83626998a083520ac"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.2/bb-v0.16.2-linux-amd64.tar.gz"
    sha256 "23c92c3bc0a774205b4c03d90363d527b20a173b3c2381daae1d53a987117812"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
