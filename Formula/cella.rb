class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.4.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.4.0/cella-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f103b49ebf8b53abd056f5aa2a297d46502a7595319397e38b285e52fae75c85"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.4.0/cella-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd40548266b29e4f4935403191ef13cd4810757a9a9603468c71b7ad10d7a952"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.4.0/cella-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6aec8c936357e45f85f207a943fc9c718aa2dee90da0ee0e033b0efae56b617"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.4.0/cella-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97da85c093bc41fe43ba9fa70f5e23297e0fa6de91e31f616ff6e8ac4fc8a2ba"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
