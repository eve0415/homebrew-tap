class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.8.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.8.1/cella-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "ddbe0f14f0e136f9e064e1affe5dc3276a80a5abaf9de8ae7858dba0a7adfe64"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.8.1/cella-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "fa984d7d91e48c28ab4e306c83e3a6c580a6a8910546b4cbb9357dabc491c60e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.8.1/cella-v0.8.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8b4d0a0be60a563a3dd0cf829a3de155f7b59a6fa7a13d950b8c1aa163d50b9a"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.8.1/cella-v0.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "37ad46574eacb1d8e0423efa66b9fa4b72ef42848b444b4f01f081915ed0f1a9"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
