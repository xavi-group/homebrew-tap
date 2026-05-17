class Bb < Formula
  desc "blackbear CLI — your life, from the terminal"
  homepage "https://blackbear.app/agents/"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.10.0/bb-v0.10.0-darwin-arm64.tar.gz"
      sha256 "2ecfe7778042458bda8fc681b8f9fb23b9798e20eab24767c440956716949f36"
    else
      url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.10.0/bb-v0.10.0-darwin-arm64.tar.gz"
      sha256 "2ecfe7778042458bda8fc681b8f9fb23b9798e20eab24767c440956716949f36"
    end
  end

  on_linux do
    url "https://blackbear-releases.nyc3.cdn.digitaloceanspaces.com/cli/v0.10.0/bb-v0.10.0-linux-amd64.tar.gz"
    sha256 "a7a94457b4de2d19631cad1caa258df18f677a53b58594db79913a0f38dd192f"
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "bb", shell_output("#{bin}/bb --version")
  end
end
