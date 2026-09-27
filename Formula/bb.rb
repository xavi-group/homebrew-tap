class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.2.0/bb-v1.2.0-darwin-arm64.tar.gz"
      sha256 "a727c459d334d893bec03d883ea0dc4a48f4e61b0920785198d642b6aeab7ba6"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.2.0/bb-v1.2.0-darwin-arm64.tar.gz"
      sha256 "a727c459d334d893bec03d883ea0dc4a48f4e61b0920785198d642b6aeab7ba6"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.2.0/bb-v1.2.0-linux-amd64.tar.gz"
    sha256 "a31905528b97780b58a1513c4517fce9f2104ddfa41ba1d1255b4fb2e966585e"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
