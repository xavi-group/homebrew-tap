class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.1/bb-v0.16.1-darwin-arm64.tar.gz"
      sha256 "d6d56721be68831098d3c660449cdb58ba0711950c69a802849083a73b239d2f"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.1/bb-v0.16.1-darwin-arm64.tar.gz"
      sha256 "d6d56721be68831098d3c660449cdb58ba0711950c69a802849083a73b239d2f"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.1/bb-v0.16.1-linux-amd64.tar.gz"
    sha256 "0f4d6c94a1a7cda5bc7c6509d8c4f4d3bab9fb64d11bf06c5959156e62128337"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
