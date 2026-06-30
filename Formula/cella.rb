class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.6.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.6.0/cella-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "20841e10320499e8d4c20ec66af1c80faa5695672e02fadafeced9b3176a9134"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.6.0/cella-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "60ed397e40c0ec535dfd1938fac4bb0396d2e413e9ea001e934fd5154a1f96c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.6.0/cella-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d62d63c463263330c6adf7f02018ed0416a45a1a2ade9d5d94f73f96911ac7e"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.6.0/cella-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c048c25994fd06b71d1baa3fa5c06106d46264cb9da49cbf694dbbb4ebc3c4d"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
