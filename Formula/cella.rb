class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.13"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.13/cella-v0.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "596f9d4ac8525a8baab763af16e1eb988904313bce15132e3dab0f1da0beacbd"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.13/cella-v0.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "84344992e5ac3ba7e6d964fce863be1a03be7aa80dba86a9f9bb95d4cb422f8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.13/cella-v0.0.13-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6baebe7fdd3d3eeb777e417b7258ba4c1428f2590729f681912655a1a3a9a66"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.13/cella-v0.0.13-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4927234761a6c0f1c58273476c117f2c6b9011c8c3e39409dde3a33ab8d06a69"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
