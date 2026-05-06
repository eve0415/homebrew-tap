class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.50"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.50/cella-v0.0.50-aarch64-apple-darwin.tar.gz"
      sha256 "89ea59beae6397349a638fc204da74083a7506a90d319d3e2f5be5d46a73edec"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.50/cella-v0.0.50-x86_64-apple-darwin.tar.gz"
      sha256 "94c11e13635385fca6ea085e848e9bfe0fefd2897d1466a33dc5298ef02de8ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.50/cella-v0.0.50-aarch64-unknown-linux-musl.tar.gz"
      sha256 "932bc255bc50c184d88d57dc8a1af678e830a1846639e3c7922630a42f68e41e"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.50/cella-v0.0.50-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b12f20cd7488cef86896f65fe00e2c02835762198e4c6dc01a11dce376462922"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
