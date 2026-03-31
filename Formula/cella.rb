class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.11"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.11/cella-v0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "6119b68bc89f5fa4b9ec9086cdbda48926d25da4573112060876b43a66fbd0d4"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.11/cella-v0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "015a995704e3f2cc48273939260242748c7c90da1ae07c681852bef3a24d25fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.11/cella-v0.0.11-aarch64-unknown-linux-musl.tar.gz"
      sha256 "689ccd5f7e7025ecbaf34d30f82aa6a40b9d9a9544d0b2f0b5c112cc330acb96"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.11/cella-v0.0.11-x86_64-unknown-linux-musl.tar.gz"
      sha256 "62fea273dc5a1bd124e5c7faab663b47235ca47e9443fa8f0c964e0c19e5c955"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
