class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.32"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.32/cella-v0.0.32-aarch64-apple-darwin.tar.gz"
      sha256 "de28d8e960ac7e1f39f92ea3847777dccabc3e81d4efc453f59f30143261b813"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.32/cella-v0.0.32-x86_64-apple-darwin.tar.gz"
      sha256 "d11471773a109536f0fed0bef8fe03b1677772bc2de0295edb3ab0e89a0e4b3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.32/cella-v0.0.32-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a67b8de8703a9d13045bd6f2bf49837553af15b3e0e51b023ad8da0a3ad3775c"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.32/cella-v0.0.32-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85ffe4cecf7d812d7666527eb871bdda4047e004b6263632fab98e109d011111"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
