class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.3.0/bb-v0.3.0-darwin-arm64.tar.gz"
      sha256 "acf78d21dd3260ed93772890a4fbec7ebe9fba652ec9711b7fbd58452fc6f7a0"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.3.0/bb-v0.3.0-darwin-arm64.tar.gz"
      sha256 "acf78d21dd3260ed93772890a4fbec7ebe9fba652ec9711b7fbd58452fc6f7a0"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.3.0/bb-v0.3.0-linux-amd64.tar.gz"
    sha256 "e5422d12c1ad44ea1d066b9a80d47ff7786e4601b2594d31549edb4196802667"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
