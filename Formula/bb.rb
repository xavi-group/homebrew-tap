class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.3.0/bb-v1.3.0-darwin-arm64.tar.gz"
      sha256 "56b3dacda83de9a9ef725f96056996b406310f43777a72cfef1dcbf18dbb4e90"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.3.0/bb-v1.3.0-darwin-arm64.tar.gz"
      sha256 "56b3dacda83de9a9ef725f96056996b406310f43777a72cfef1dcbf18dbb4e90"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.3.0/bb-v1.3.0-linux-amd64.tar.gz"
    sha256 "c20322a60c1a612efd56af9571696dd45881bfa29f120c7f638e722e3392dbe3"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
