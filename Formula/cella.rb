class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.7.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.7.1/cella-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "2d7926c70d56afd147a2c2e44b28764e492a0a6d4e628b716579150b70d4893e"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.7.1/cella-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "509217ffb2762b611a167ff373c72669e953d9c7d894739ed7485262363753bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.7.1/cella-v0.7.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7557f96eb46be8acc9bffe60685c5ba392dcd40565415913a6054cae5e7d54e9"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.7.1/cella-v0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f19b397d0a8f4b5029414a9df9a248cb7738d0fae0e351984f31fded35c8de04"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
