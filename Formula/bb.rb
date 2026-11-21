class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.11.0/bb-v1.11.0-darwin-arm64.tar.gz"
      sha256 "d1e70ffeea244f6bd4e5374a187bbe524141e6a5bcc15ff64a1a8fc6a8a87c57"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.11.0/bb-v1.11.0-darwin-arm64.tar.gz"
      sha256 "d1e70ffeea244f6bd4e5374a187bbe524141e6a5bcc15ff64a1a8fc6a8a87c57"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.11.0/bb-v1.11.0-linux-amd64.tar.gz"
    sha256 "cdbf1be53a2f24242dc886db589d3f16185a278f79fef04b75a855ccc86dc64d"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
