class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.3/bb-v0.7.3-darwin-arm64.tar.gz"
      sha256 "a4a218981204bb642d021d5b646a6533f69f75090f24f98463aedc8fe61cfa0f"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.3/bb-v0.7.3-darwin-arm64.tar.gz"
      sha256 "a4a218981204bb642d021d5b646a6533f69f75090f24f98463aedc8fe61cfa0f"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.3/bb-v0.7.3-linux-amd64.tar.gz"
    sha256 "a218e90b1d3f7738a1a8142f2a6e36cd31b9f4fd8bc587ec54786b13fb0dcf57"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
