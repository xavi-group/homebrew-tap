class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.1.0/bb-v0.1.0-darwin-arm64.tar.gz"
      sha256 "76abdbd2c045a68f73710f3bd105b4e8450f37c182eb8dd53b9868781092a490"
    else
      # Intel Mac — same ARM binary runs under Rosetta 2
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.1.0/bb-v0.1.0-darwin-arm64.tar.gz"
      sha256 "76abdbd2c045a68f73710f3bd105b4e8450f37c182eb8dd53b9868781092a490"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.1.0/bb-v0.1.0-linux-amd64.tar.gz"
    sha256 "eedc3d782a86c9f0534b36603948073be0186085cf416c69e191208184a63d9b"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
