class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.9.4"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.4/cella-v0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "5a266e056b5a30f7779737578b24074cb31a897b52101521a678a97d527a2ddb"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.4/cella-v0.9.4-x86_64-apple-darwin.tar.gz"
      sha256 "37ea00a85fdf2ebc4ac17d62a234b6c5d60bd3b9209a4a2e9f49dd5b0bb61481"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.4/cella-v0.9.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26d4eb6ff62b139ab8214463c222e9625ef93896368294e179b744f97224dd34"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.4/cella-v0.9.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2c572744889a1c53edb008c97fcedaf21700a2a40c7d558d1d9f67473d403f78"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
