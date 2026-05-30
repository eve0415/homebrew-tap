class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.3.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.0/cella-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "1d851f9f9ecfd8773e164eafa7ad39d5c7b72286a840d29846f091b5e3eeb1ca"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.0/cella-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "97ea3397781ec76f8a33ac3c334fa28d78f9039be3bcb9f10a18fcd452f3628a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.0/cella-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4f323547f57ac5deab5050498c1d01fb6f03eb675f174ca2b48e01a19cb07eb"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.0/cella-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca088d5d588697fd391cd46224bacbbe580b75cdaac67777d6e884e7035e2708"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
