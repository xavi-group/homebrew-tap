class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.2/bb-v0.6.2-darwin-arm64.tar.gz"
      sha256 "32eb7e3df6ad1d0f0325dc4303e8501d59eb8b0b33a6b6e0876d267392efe517"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.2/bb-v0.6.2-darwin-arm64.tar.gz"
      sha256 "32eb7e3df6ad1d0f0325dc4303e8501d59eb8b0b33a6b6e0876d267392efe517"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.6.2/bb-v0.6.2-linux-amd64.tar.gz"
    sha256 "0486a665a28435a905b89d09de09c0afb636a9515bad093ccac21028e9755548"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
