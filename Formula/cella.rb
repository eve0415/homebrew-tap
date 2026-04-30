class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.40"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.40/cella-v0.0.40-aarch64-apple-darwin.tar.gz"
      sha256 "faacd9c03ec2bc1cffbea237006f4dd498b5c711806c605ffa1277475cadbb8c"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.40/cella-v0.0.40-x86_64-apple-darwin.tar.gz"
      sha256 "619bd9f59d39b98704f751b37d045d6b979532c097336d6cd513eae68e2a7f1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.40/cella-v0.0.40-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff62cf04db389e70f348001bd6f49a870028c167fbe09111742ca340a1b054e0"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.40/cella-v0.0.40-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f8bd8575d86a830ef4db7d6b1492160faa846eb5a3f10344e50f0560e7bc949"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
