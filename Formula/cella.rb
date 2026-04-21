class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.31"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.31/cella-v0.0.31-aarch64-apple-darwin.tar.gz"
      sha256 "d871ee8a0dc98ffd89db0e7afbcb3baaf5ae4c55b25723ba5e7059d06fd8eeb1"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.31/cella-v0.0.31-x86_64-apple-darwin.tar.gz"
      sha256 "b05fb293874846f768632931d582f9b7d69b4a28e5c250b556ba2b34c717fb18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.31/cella-v0.0.31-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0fc016f38a9b9441a7c7ed214eb180432e8da74c547b636b7b2cee573eacb2f"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.31/cella-v0.0.31-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fe6ae54e416c675c802ee51c6f8198a0d90e278e27c29b2cfaa6e4197ad573a"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
