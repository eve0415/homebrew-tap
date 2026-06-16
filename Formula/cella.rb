class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.5.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.5.0/cella-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d45232d4ea348cfab42bca5fe71254de915c0e96235a38f96064f5fe469b69a"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.5.0/cella-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "769e6e6ab0e3942a15086ce373412c5f65b167da849a2faea225e3a594693b64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.5.0/cella-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60304d81bf2d5533e221eaf75c61f3c593359f872a24452405f3096839b0609a"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.5.0/cella-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "12ae6f34661a4223749e58648bed7cc2c61cbedaaae1d00b4ebe677ded2cdf04"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
