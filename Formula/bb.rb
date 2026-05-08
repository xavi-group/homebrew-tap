class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.3/bb-v0.6.3-darwin-arm64.tar.gz"
      sha256 "86373a8e5d3a19756a9306eea956300c5fb4c9a36ea682f3edd6f295cb96c5be"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.3/bb-v0.6.3-darwin-arm64.tar.gz"
      sha256 "86373a8e5d3a19756a9306eea956300c5fb4c9a36ea682f3edd6f295cb96c5be"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.3/bb-v0.6.3-linux-amd64.tar.gz"
    sha256 "ecfc360887dd7b0ac744ddcc6b57e46274062adfadbb1e80543acc88624f4e4a"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
