class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.6.3"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.6.3/cella-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "9a9c7cd2b68130944312413281764a1542bc86bd1d3e9c53940719e68ecbfebb"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.6.3/cella-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "eee5323416af3e070bdbe080a20a0b3fecdaedd9da99f0d6c41b06d65ddeec55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.6.3/cella-v0.6.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "718b7f5575b7586d08fa1a8a5e23a2eb5dfec2550e8b8fe6cb443bd59484eb59"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.6.3/cella-v0.6.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "558d1b1d9b069d4392fedbc800d8027866e09c40086c8a68e2075a2f285bb122"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
