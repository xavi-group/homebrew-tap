class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.4.0/bb-v0.4.0-darwin-arm64.tar.gz"
      sha256 "f5c11427b2e9b450bd73a0e2fecf187439652867b1c98c9fdcd82de07ebe98aa"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.4.0/bb-v0.4.0-darwin-arm64.tar.gz"
      sha256 "f5c11427b2e9b450bd73a0e2fecf187439652867b1c98c9fdcd82de07ebe98aa"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.4.0/bb-v0.4.0-linux-amd64.tar.gz"
    sha256 "c104d8df005d3f1ebe407790a5a00a2ccadb13b490e4c752f7cf436d41905308"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
