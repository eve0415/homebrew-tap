class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.38"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.38/cella-v0.0.38-aarch64-apple-darwin.tar.gz"
      sha256 "d4f8de278627997fcdf8e04e154c71e721451e06584b34e27105b7dbae8977d4"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.38/cella-v0.0.38-x86_64-apple-darwin.tar.gz"
      sha256 "29ed02dab3b340f240d814340f0a103e63d5c7427e5b49c53d1465857aa997f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.38/cella-v0.0.38-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7fe832a606575e5a63069c3f0fd220ea2353b47e9d29dc8b31130ef489d0fbf"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.38/cella-v0.0.38-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cb6ceaa90dd71d483705d492e51b81a7df2fe261cdc79a396110eaffbd617e6"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
