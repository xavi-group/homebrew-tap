class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.5.0/bb-v0.5.0-darwin-arm64.tar.gz"
      sha256 "32ab171223c64f6ffb61af5d11358aae51c4390a3a74b55b4b3cead5a61c59da"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.5.0/bb-v0.5.0-darwin-arm64.tar.gz"
      sha256 "32ab171223c64f6ffb61af5d11358aae51c4390a3a74b55b4b3cead5a61c59da"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.5.0/bb-v0.5.0-linux-amd64.tar.gz"
    sha256 "440bb6a34f4ec0b46c5e125dbbb01da320f35d96522e3bf30f84df0cb00f0616"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
