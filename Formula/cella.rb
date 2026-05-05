class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.46"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.46/cella-v0.0.46-aarch64-apple-darwin.tar.gz"
      sha256 "a606169fb90fb8534d2c00b2459e40e85a47468fdfb4cbfb0f06f801061dafa4"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.46/cella-v0.0.46-x86_64-apple-darwin.tar.gz"
      sha256 "f98bf89e194d76c4f5433357f91c9872798212d943ce8916738b1cdfcf0565ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.46/cella-v0.0.46-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41ef7ebf47e3da32c625ac697c5e087f6440377f00120f6698f1e43df7f8b9bd"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.46/cella-v0.0.46-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b9d00331f807cbb9c79cfc06a9c3b522bffd50078dd4bb72f8e6558f2e086d9"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
