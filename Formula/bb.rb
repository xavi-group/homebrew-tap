class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.8.0/bb-v1.8.0-darwin-arm64.tar.gz"
      sha256 "3c2d89123a01c6287ee63fc073ecd970971c42770e24437375da3b820fce5203"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.8.0/bb-v1.8.0-darwin-arm64.tar.gz"
      sha256 "3c2d89123a01c6287ee63fc073ecd970971c42770e24437375da3b820fce5203"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.8.0/bb-v1.8.0-linux-amd64.tar.gz"
    sha256 "55d9491f028f4467d997a1afc137f8c31bd59a78809d58b27251ac0ee184335a"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
