class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.17.0/bb-v0.17.0-darwin-arm64.tar.gz"
      sha256 "f705c42bb440d259dbdc87e8cdb85070d818fc01713394ccb28101e34a80294b"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.17.0/bb-v0.17.0-darwin-arm64.tar.gz"
      sha256 "f705c42bb440d259dbdc87e8cdb85070d818fc01713394ccb28101e34a80294b"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.17.0/bb-v0.17.0-linux-amd64.tar.gz"
    sha256 "3f71e85666ccaa9dffcbf244586921e13b9abe4d3e0f990d4e49cb48adf5b36a"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
