class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.7"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.7/cella-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "1ac9fa441f8e9276c3816817f1949ff67cc51e956afce43b90ba3bd854528503"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.7/cella-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "d2ca054f0fc28dbc92b484af9c070609624010187f211fcd1b33faa17548e340"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.7/cella-v0.0.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f621660b2acc267674985b084d2a4f6cdcbcc5cbce8f21210269a85775e6dcf"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.7/cella-v0.0.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28870cd4658e4d4974804deefcd3de3a2e61041a03e8dd8bbc86491ad03e2809"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
