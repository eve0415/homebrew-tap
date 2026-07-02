class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.6.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.6.1/cella-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "850ba440fa3b029ee591a2e743d23e8310a9d3e56f2ef47da80178f587c758d0"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.6.1/cella-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "cc1b40634b26fdc2d16b7c4b2a0364e84b3ce19b056c0b6f09922c24b8e0d6bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.6.1/cella-v0.6.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05de6eeac13fbdb85caeda3ab024baa302cdc80c76563161e3a758e3d2ee58c3"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.6.1/cella-v0.6.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a150ffb76c3c52bfe82628812121376313f03fda43c9b5215eed65d40db0ce47"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
