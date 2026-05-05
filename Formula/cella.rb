class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.44"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.44/cella-v0.0.44-aarch64-apple-darwin.tar.gz"
      sha256 "01cb36588e08cab2aeb031400c7ed1681b81b8fe6497d4a6bf08948b0db36168"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.44/cella-v0.0.44-x86_64-apple-darwin.tar.gz"
      sha256 "b1644292cba8ae3dbb8d8d2f05c1291e6007a7cf9821f6811f3d1c8fccb1c486"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.44/cella-v0.0.44-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2288301fd5047c89de1e082c6abdf3e07f2e3117bc4037bd89c8bae18ca04992"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.44/cella-v0.0.44-x86_64-unknown-linux-musl.tar.gz"
      sha256 "107cc5f843470c74e8425639a4a714e179be6b099ee6b55ec72ab42bd8ff9f49"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
