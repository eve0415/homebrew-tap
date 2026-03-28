class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.8"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.8/cella-v0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "d41778c814aed9a5af106c3a9969854c2c03f982060219893e801026a27676f8"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.8/cella-v0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "a9357bcf64b901e756c7077eaf53eb7199aa18e2bda0370cbfe2bf7c42a04846"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.8/cella-v0.0.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a34b0cbd4422c90e535c52241fd61dd787e55eb80811da2a3624c741ae8e8e3d"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.8/cella-v0.0.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e58ebeacf7ef75ba33f4a4dc724ebd15956c0b981f441cafc6093ae73bc2dbbb"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
