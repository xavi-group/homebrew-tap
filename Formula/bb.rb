class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.19.0/bb-v0.19.0-darwin-arm64.tar.gz"
      sha256 "293752fcf1ce9b315db91ada9a9b084fcd1a064819002f61514faece678d784e"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.19.0/bb-v0.19.0-darwin-arm64.tar.gz"
      sha256 "293752fcf1ce9b315db91ada9a9b084fcd1a064819002f61514faece678d784e"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.19.0/bb-v0.19.0-linux-amd64.tar.gz"
    sha256 "128d48cbade1b0fbc60ce5bf5ce9a12229478e8d324e7f7f67f6afca706b2d64"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
