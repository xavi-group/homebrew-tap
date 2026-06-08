class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.15.0/bb-v0.15.0-darwin-arm64.tar.gz"
      sha256 "4963e1d7daf29233173e0f155ec31f89a301fb5b79b01829e586dcbc6b9fa47d"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.15.0/bb-v0.15.0-darwin-arm64.tar.gz"
      sha256 "4963e1d7daf29233173e0f155ec31f89a301fb5b79b01829e586dcbc6b9fa47d"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.15.0/bb-v0.15.0-linux-amd64.tar.gz"
    sha256 "0e23fbdda43e5e2046a420531bf493251af538d494439a2d350028e67f7d2064"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
