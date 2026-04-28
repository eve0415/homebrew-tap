class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.36"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.36/cella-v0.0.36-aarch64-apple-darwin.tar.gz"
      sha256 "f512936661c47273ebbab5ec413ec8c26657b17a3986241c8f27a99fe9a5a5f8"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.36/cella-v0.0.36-x86_64-apple-darwin.tar.gz"
      sha256 "abf1c18e757088388ef49bbb73c14e5f3c63f5f7a6c514ac1ae4196a9e508827"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.36/cella-v0.0.36-aarch64-unknown-linux-musl.tar.gz"
      sha256 "853d4f85c62e43ec2ca4d4e35f633e4a61143e2061cb06b1d9c572d2c272a405"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.36/cella-v0.0.36-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8eca82f0b3a311d6a7e02888125fa703290072825b8122ffc62014c9cc265a1f"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
