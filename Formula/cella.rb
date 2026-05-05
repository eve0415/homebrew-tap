class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.45"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.45/cella-v0.0.45-aarch64-apple-darwin.tar.gz"
      sha256 "29f8f71e9e866c979e8b1ebfaf9c5798871957e51bc4b3589e6dccbd27f939ff"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.45/cella-v0.0.45-x86_64-apple-darwin.tar.gz"
      sha256 "ac18a51c8057a2608a7dcaf89f98b1cc1ab925e9ebf43d0e8dbee9f12a9c752b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.45/cella-v0.0.45-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9db0ddee128ef867640c768a719ef15c62f34ff7bc8d7d8d5a74f0a473956815"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.45/cella-v0.0.45-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6dff985b99a87289ba60b7ead6c4c6acdaa6e2781012ebcdae73357db28efa05"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
