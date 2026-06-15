class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.16.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.3/bb-v0.16.3-darwin-arm64.tar.gz"
      sha256 "971280665bb1b1343a265c6210a198efb58859a2a026a6e5d68866345d9be4fc"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.3/bb-v0.16.3-darwin-arm64.tar.gz"
      sha256 "971280665bb1b1343a265c6210a198efb58859a2a026a6e5d68866345d9be4fc"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.16.3/bb-v0.16.3-linux-amd64.tar.gz"
    sha256 "4201c5549d473e7e2b4c501fbb5d8c21bcf29b07d2801294ad8fee70b08856e5"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
