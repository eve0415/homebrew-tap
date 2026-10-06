class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.9.5"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.5/cella-v0.9.5-aarch64-apple-darwin.tar.gz"
      sha256 "fde1ccd3d200aecd6f74f2776322caac97d9d24ff7cac4c73e6e1989bb79167e"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.5/cella-v0.9.5-x86_64-apple-darwin.tar.gz"
      sha256 "230390156d738169f01ac67c1cafb9e26089703b3aaa8f847b42d28bda80d71c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.5/cella-v0.9.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f43ac2a399c3212a81d5afe23d50e43adbd09c95c185065a9ad335ac30ccf85f"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.5/cella-v0.9.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2705f62fbeecaa517c6c2d69bf6929a2ceafdd9c8a56908abc32e91c9f724bd"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
