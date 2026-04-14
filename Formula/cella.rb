class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.25"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.25/cella-v0.0.25-aarch64-apple-darwin.tar.gz"
      sha256 "178bfae43bfc6ecfbaeba1535c380343620dd7b631c0c053c39f331c17cb84c8"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.25/cella-v0.0.25-x86_64-apple-darwin.tar.gz"
      sha256 "e874c05e1fe925d065562393342bb864531fa659be7a8d3351dab3ae288f56f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.25/cella-v0.0.25-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b34aa25e7362bf6d6b7edc84a8bcd54857d87ed21d9f6efa38ff61330b9dfc63"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.25/cella-v0.0.25-x86_64-unknown-linux-musl.tar.gz"
      sha256 "52db5bd53cdc48bbd090331383bc33479c5481a5f4bd28fa402f1ec5a87e4738"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
