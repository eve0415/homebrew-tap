class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.43"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.43/cella-v0.0.43-aarch64-apple-darwin.tar.gz"
      sha256 "182e19a8024ad3584488a0b326fe1fc83ef38cd653a2cd372b78f070093b94b0"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.43/cella-v0.0.43-x86_64-apple-darwin.tar.gz"
      sha256 "1fc00660374bc4705fe4e924d128de75ffc48d42f578fb3846c94392b54fadfc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.43/cella-v0.0.43-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ed3f4ac6f49bc73837b6b715b3bab0f94e148d4058b8e72536e21cffb9e8c55"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.43/cella-v0.0.43-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccbc9903d34afe21dc2faf50854a185effb6d839e55c521abed3746d405dea84"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
