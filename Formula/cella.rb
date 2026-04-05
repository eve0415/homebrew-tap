class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.19"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.19/cella-v0.0.19-aarch64-apple-darwin.tar.gz"
      sha256 "92948ef8201f62f712d0f8259bdace7d99f67affec1da021b83f63badd7d0c2f"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.19/cella-v0.0.19-x86_64-apple-darwin.tar.gz"
      sha256 "814bc6653d8e8671a05c20413c391dbd1754b7c3971b6b6308fb759d0983efb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.19/cella-v0.0.19-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0bcbeb99c80698d56da01a7cd390ef190fa91e22ce70e327e48c399972a0092"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.19/cella-v0.0.19-x86_64-unknown-linux-musl.tar.gz"
      sha256 "245874cd42e867f72b2ac7f456a82390ab45b03becbb0592cabcac89570bb534"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
