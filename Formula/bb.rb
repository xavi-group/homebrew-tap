class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.18.0/bb-v0.18.0-darwin-arm64.tar.gz"
      sha256 "1944b23766655fa5278188a804420adf1bbf3fceec0a8c97fd050c38ddf4a575"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.18.0/bb-v0.18.0-darwin-arm64.tar.gz"
      sha256 "1944b23766655fa5278188a804420adf1bbf3fceec0a8c97fd050c38ddf4a575"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.18.0/bb-v0.18.0-linux-amd64.tar.gz"
    sha256 "4b4fc3a7b77c450d99473390465736ba51f85b7f1e249431e0d68fcf64bcd0e3"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
