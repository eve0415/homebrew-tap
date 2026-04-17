class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.27"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.27/cella-v0.0.27-aarch64-apple-darwin.tar.gz"
      sha256 "6bbeea818ccce35931168b3da1c21950772a740ef9fe044317921cbadba8a535"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.27/cella-v0.0.27-x86_64-apple-darwin.tar.gz"
      sha256 "d38bc4d196b60701e7e6ff8aa87707f7611322b1281f5b4a132dbc37b81d34b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.27/cella-v0.0.27-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0fe2de1d4792db1f0f0bc960301c87ce31a7d0492d4b4c00bba39be3c7da5f56"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.27/cella-v0.0.27-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2045f219c07b58d04de83b8946c53d8c3848fa07727e6f78002f19186de65564"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
