class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.20"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.20/cella-v0.0.20-aarch64-apple-darwin.tar.gz"
      sha256 "63bada67a4eba994b4beb084afdf7c29664056f8fe6e74e88cb704c1f9e41ec1"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.20/cella-v0.0.20-x86_64-apple-darwin.tar.gz"
      sha256 "2ca0d9c56d1a0a347a65c5bc5f3bd8909d1c569ff92776baa73ea0b09e2a63bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.20/cella-v0.0.20-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f38ffc4bb81815f109fb47073529483b9f114b55a3ab64d5181468827f97267c"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.20/cella-v0.0.20-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d5adb1c56cdd1a3ef3e1d15d0e22512a0b4c588b16f5f91954b349454448a33a"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
