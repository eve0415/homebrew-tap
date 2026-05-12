class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.53"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.53/cella-v0.0.53-aarch64-apple-darwin.tar.gz"
      sha256 "143a02eb588f7edfa23e3330cc767af7e8325c0f8516d646e6913fff041ebe41"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.53/cella-v0.0.53-x86_64-apple-darwin.tar.gz"
      sha256 "ea603e5fd09b3eb6ad0b759730fb3cab3c48ee8f8830cf1f088efd2b5d25865f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.53/cella-v0.0.53-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5d849a00517d8bd67558b88cee0075661f2ff3956c948b2d51b07b2caefc7f9a"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.53/cella-v0.0.53-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c0ef1b74bd48e9c488dead0b0a529976e8e6cfb4da66c388ffb75680e6d210b"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
