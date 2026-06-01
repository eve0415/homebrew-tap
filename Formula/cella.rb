class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.3.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.2/cella-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "f562cc26f3e0a9fbb1195c369acda73bbfe5b127133289e92e013511761af20a"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.2/cella-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "93e387b09fa2c7493f251afd852b3c4bf7c766e0d73f9f5f98fec8a25b437737"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.2/cella-v0.3.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e313ebaf7585fb2cb7cad954277376ed9e84c651d3b7072a88c7d19122260b9"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.2/cella-v0.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8e2f65b87332e522a085bfd2fd621276015fa3b840ef4b78fbc2d2f790ac38d"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
