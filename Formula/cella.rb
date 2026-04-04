class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.17"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.17/cella-v0.0.17-aarch64-apple-darwin.tar.gz"
      sha256 "ed1f2c3869ba9da3ab5c6730bbfb3c20336f3a405ab19d3d27060799169a80f9"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.17/cella-v0.0.17-x86_64-apple-darwin.tar.gz"
      sha256 "ef464b68d70cbcfeeb2b2a69638f092b1201d626d8b45d0b15a90824ff350c09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.17/cella-v0.0.17-aarch64-unknown-linux-musl.tar.gz"
      sha256 "286e2ab5ee9dc039854f2a87fc074f0844d756aeb496404245eeec0b20cacc99"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.17/cella-v0.0.17-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aea2ece0507848a185133d1ceb98c321e014e1951f948f03606de6f9e724863a"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
