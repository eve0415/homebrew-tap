class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.51"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.51/cella-v0.0.51-aarch64-apple-darwin.tar.gz"
      sha256 "7cb65a5a144f1dbcbeef42d02cab7eaec1070d79437397c8cae22ac27a2ca76b"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.51/cella-v0.0.51-x86_64-apple-darwin.tar.gz"
      sha256 "a390021da32aa2f6250f7640d65f8c3cf935d4ee2c8848a083d553e1769fba49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.51/cella-v0.0.51-aarch64-unknown-linux-musl.tar.gz"
      sha256 "434313fd7643c964b3effc889bc2693255dc7a22250af2d391bf5077d502f588"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.51/cella-v0.0.51-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd950df40f0407717c6aea5e86a7f57709c73962e4e1e41b34c33625bdc9b367"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
