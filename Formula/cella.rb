class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.21"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.21/cella-v0.0.21-aarch64-apple-darwin.tar.gz"
      sha256 "1312087b2d0d90124ac8b087caefcba372d391b03910169cb8bfc7a9bdec938a"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.21/cella-v0.0.21-x86_64-apple-darwin.tar.gz"
      sha256 "595d1d89349dc87acf219d2a2adde5c9a140c99c9e22dab35e334c0b63c67159"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.21/cella-v0.0.21-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3277688fed41d32965377754714332aefecb472e784aa8ddf59758a617410592"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.21/cella-v0.0.21-x86_64-unknown-linux-musl.tar.gz"
      sha256 "838c7c3d7a76e862a537fceec6b9166b6a9824215dcb9bcfe4363a5d2a9dc1f8"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
