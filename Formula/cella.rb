class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.1.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.1.0/cella-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b10c3fa19d9a188d6115d50ba49e0513483316791e0d59dda97bffa4c71a3791"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.1.0/cella-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "49840094a76a0e96473a059c7d13756b0742330d5ae2e222bbf813231d24f999"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.1.0/cella-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ecac2f652dcb3604349a24e1651d744cc5201060dd1eca9abad3e927055bdd8"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.1.0/cella-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3052fdd0b8e570e2d951b900a8ee872cd5c6b503e9ab8024149aa9fb25334919"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
