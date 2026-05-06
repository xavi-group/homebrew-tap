class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.2.0/bb-v0.2.0-darwin-arm64.tar.gz"
      sha256 "d09c02692aa3928327dee7b0fe2433e755326cb5b4e8e654e39d30c8188ec44c"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.2.0/bb-v0.2.0-darwin-arm64.tar.gz"
      sha256 "d09c02692aa3928327dee7b0fe2433e755326cb5b4e8e654e39d30c8188ec44c"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.2.0/bb-v0.2.0-linux-amd64.tar.gz"
    sha256 "59f307a99ad96232dad0a0f06e1182d88ad9415fadb4c507a89c4a49649e91f2"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
