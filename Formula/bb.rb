class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.9.0/bb-v1.9.0-darwin-arm64.tar.gz"
      sha256 "46cd1c0690495624ddc4b30d72262e86ecf0f7f56c1e965edd16d8bd22855e23"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.9.0/bb-v1.9.0-darwin-arm64.tar.gz"
      sha256 "46cd1c0690495624ddc4b30d72262e86ecf0f7f56c1e965edd16d8bd22855e23"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.9.0/bb-v1.9.0-linux-amd64.tar.gz"
    sha256 "14b99f00df5b6adf60fb6c2fbdfd68ca19e83b32107f1da58452c6ba19d8b784"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
