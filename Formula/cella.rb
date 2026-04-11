class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.22"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.22/cella-v0.0.22-aarch64-apple-darwin.tar.gz"
      sha256 "133cdd8db8197b86bd8f357fbae4f79edb85bfaffa6e4e2424ae58a1c9981327"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.22/cella-v0.0.22-x86_64-apple-darwin.tar.gz"
      sha256 "d2881b6bdaed739a678dbb282a1cbe7d3dc46773968c566452cfead9e3026e04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.22/cella-v0.0.22-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a61c32665e2f4a6538cf6bc2fad25e6c367129cebee25c1befbf694042c4dce6"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.22/cella-v0.0.22-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6d3b232e944472a57419338b9fd94585e2e5d387865966ccbbb89da27ad56d66"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
