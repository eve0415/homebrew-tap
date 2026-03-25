class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.5"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.5/cella-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "e4c6c89ec2e109d7beb27ad12f57092c61029d9efeba2780385209099d5f1dcb"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.5/cella-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "2bf2bc2c19466c3525d14896f0119221ebdb4777a7a8eab3c749ee7b37100177"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.5/cella-v0.0.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aac15940c4202f00d1cd1e45fa9194cf5f619f3039a32a1aa5c19cfe27a487dd"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.5/cella-v0.0.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eed1097d47b94810ec9b0c51680d9c016bfe12dbefba962486b6cd13e5791cce"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
