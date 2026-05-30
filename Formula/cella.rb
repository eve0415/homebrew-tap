class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.3.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.1/cella-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "a095c9024ca769832ba6402a75dae0a05645a20243eacd1fa672ecf51d590493"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.1/cella-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "03e47641c10cb3a5065eabd293088c81e3ffe527f889280aacc3833587e7dedc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.1/cella-v0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "280c870de07cb3f8a767067476e56f69d73a96781afd675753a8ce4bff32043f"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.1/cella-v0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6db423cc16fd68839e9019af973df5985be6b122612be21265a8c5f79a79cad0"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
