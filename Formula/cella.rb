class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.37"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.37/cella-v0.0.37-aarch64-apple-darwin.tar.gz"
      sha256 "61cae72cf8bd0a3bc490590a7747714647ddc81061992d522a979e01821e9d6b"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.37/cella-v0.0.37-x86_64-apple-darwin.tar.gz"
      sha256 "6a6e4883733ebf87c4df1c60ad749c63950e0abc68aadc66f0ae06282cdf251a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.37/cella-v0.0.37-aarch64-unknown-linux-musl.tar.gz"
      sha256 "71f2a20a63b76e21648d3cb634dfb006773f8ecc4e271479a2a2ee2d10c53862"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.37/cella-v0.0.37-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6dbe0d0c688258ae860366730ed16c361268b74c05e85c7f570a1ccfc76f8518"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
