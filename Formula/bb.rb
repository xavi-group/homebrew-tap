class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.24.0/bb-v0.24.0-darwin-arm64.tar.gz"
      sha256 "d27bde61676fcbac48ef000b7b55e6259a4ed52ec71dda1b76b5d997e6afa524"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.24.0/bb-v0.24.0-darwin-arm64.tar.gz"
      sha256 "d27bde61676fcbac48ef000b7b55e6259a4ed52ec71dda1b76b5d997e6afa524"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.24.0/bb-v0.24.0-linux-amd64.tar.gz"
    sha256 "14c6cb524e8ce2c3698252c7b91d54ed3811759c1bf4a151776b02b5dcc0fba0"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
