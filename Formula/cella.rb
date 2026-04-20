class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.30"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.30/cella-v0.0.30-aarch64-apple-darwin.tar.gz"
      sha256 "a9f6fd34e13e99c69df1eb7ea3dbc896de578ccd9af38854a46d13b6d79247c7"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.30/cella-v0.0.30-x86_64-apple-darwin.tar.gz"
      sha256 "c9ed825c1377071351a67f87fbe7f443b7459b1d10306977b9c36d2eeb998215"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.30/cella-v0.0.30-aarch64-unknown-linux-musl.tar.gz"
      sha256 "146e1b6112fca77daa7982231cc98f89949185044084d99adae6a52120c9d9cb"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.30/cella-v0.0.30-x86_64-unknown-linux-musl.tar.gz"
      sha256 "347574499638a6047ba430ec359b63c55bedcc5279242ece51605c633d7b8c04"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
