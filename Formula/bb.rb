class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.8.0/bb-v0.8.0-darwin-arm64.tar.gz"
      sha256 "e5988ab5ea7c53bbebc8e6b0b1d55ea4be96cb810c7ef164498a45f4577477d7"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.8.0/bb-v0.8.0-darwin-arm64.tar.gz"
      sha256 "e5988ab5ea7c53bbebc8e6b0b1d55ea4be96cb810c7ef164498a45f4577477d7"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.8.0/bb-v0.8.0-linux-amd64.tar.gz"
    sha256 "8d11151c3f67a489b8ec4718000bf849efe5699699a7cb6488e438383144f313"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
