class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.10.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.10.1/cella-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "9857f3204dc3cee5622448c98a219d189bfb77cd956eb9843485cdfa2ab4d1ce"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.10.1/cella-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "0cb92fe691367a19ba3f3d90a15ba4ae732f08fc4214118cfaf933cfa3998a0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.10.1/cella-v0.10.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "47b9d0aeb3f47d04700605e699587a1df12c47ff181c7df81c232e33c2fd2d9c"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.10.1/cella-v0.10.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad71fdff5373566fed29102c2d9c87dd4e5f107ac8d202aeb9b2b17c414e6e91"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
