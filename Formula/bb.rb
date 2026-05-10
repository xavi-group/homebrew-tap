class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.1/bb-v0.7.1-darwin-arm64.tar.gz"
      sha256 "27d850e42553f94e9afdff5a0e2d4b49e9503a42b315229a79e2efee5fd2384f"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.1/bb-v0.7.1-darwin-arm64.tar.gz"
      sha256 "27d850e42553f94e9afdff5a0e2d4b49e9503a42b315229a79e2efee5fd2384f"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.7.1/bb-v0.7.1-linux-amd64.tar.gz"
    sha256 "914bb7775693400014fe2d4a0ba825417e393c87adcb459fa65e085ca8702318"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
