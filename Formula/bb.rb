class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.11.0/bb-v0.11.0-darwin-arm64.tar.gz"
      sha256 "a627aaa9c8bc0e18f3df6e082a4c6ed988dae0a86288a137f5a3e6239275780d"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.11.0/bb-v0.11.0-darwin-arm64.tar.gz"
      sha256 "a627aaa9c8bc0e18f3df6e082a4c6ed988dae0a86288a137f5a3e6239275780d"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.11.0/bb-v0.11.0-linux-amd64.tar.gz"
    sha256 "1195556c2edb6c4022851ede16d4652953245797b00ed78e4c3718e9484d27c2"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
