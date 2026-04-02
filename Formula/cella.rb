class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.15"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.15/cella-v0.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "4a7afe6e156c305d94d6d40780d40cf656f6148904701e2c0bd3cd51ee1e8d5d"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.15/cella-v0.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "6c647140c97a684b14ced95a1763cb083006da6055f41dbdba3d2d5ff6138f2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.15/cella-v0.0.15-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c03aebceab71903af39e3d4e4f03fda2d00400d3894816b3bcc8ed4d850659d1"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.15/cella-v0.0.15-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4a2d704cd7f3aca27905db26255cd4e35235669bbd85e72ec9252c6b00c6d9e1"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
