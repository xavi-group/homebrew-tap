class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.7.0/bb-v1.7.0-darwin-arm64.tar.gz"
      sha256 "93b094d97f2b278d0d9c0819eacab7852bd565501163343b9d908c3cee68e100"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.7.0/bb-v1.7.0-darwin-arm64.tar.gz"
      sha256 "93b094d97f2b278d0d9c0819eacab7852bd565501163343b9d908c3cee68e100"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v1.7.0/bb-v1.7.0-linux-amd64.tar.gz"
    sha256 "0cbed2194952d003e5a40e92d53d58cab55692de50f7de85ca281f0a65f99f73"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
