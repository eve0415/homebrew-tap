class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.52"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.52/cella-v0.0.52-aarch64-apple-darwin.tar.gz"
      sha256 "cfb27234aa465823047e437dcf7967eb0088e92a781c3d7a41c0cd422f088dcf"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.52/cella-v0.0.52-x86_64-apple-darwin.tar.gz"
      sha256 "0bb9cfffd0d9a1e6e2b1d5395524f7b414cd3e17f333779122dae7d02656926f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.52/cella-v0.0.52-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bdea21d18b023486895a50b7726da18e2c75ff106a0c272dd08949757917536a"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.52/cella-v0.0.52-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02894983e369de0e0e21726a2af969abe30cf65c7f7062449fa8fec4f4ed942b"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
