class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.12"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.12/cella-v0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "643e9e749692973c7e89977b91f9ef8f407116a5d10fc141a2a634ab4c26ae8b"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.12/cella-v0.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "3156c8f77125ac8ec6a3be92b2cbb9df472a82eb2284bf41a6d4bbc3661f473d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.12/cella-v0.0.12-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c2b0526cfd1a2b43e028bb9d0249bdfb99a28c66a4debcc79e89ec31904e27cd"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.12/cella-v0.0.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "079bea328472a2e5124a928269383b420f745492fee1df9bd4a3314dda45c334"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
