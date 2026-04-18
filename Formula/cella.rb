class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.29"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.29/cella-v0.0.29-aarch64-apple-darwin.tar.gz"
      sha256 "b4b2894fdd45beff39a9dc19e2ddfec6c7964881560a086add535898ec5827d9"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.29/cella-v0.0.29-x86_64-apple-darwin.tar.gz"
      sha256 "bd69bee53e244615e576ef7b526467355db18db5d36720fec76e29009ac5c691"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.29/cella-v0.0.29-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a410b8ec98b692c65d7052a42746adb818565169d8fe1c020a644ac21c5ac9e6"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.29/cella-v0.0.29-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53a41e28a618b5b9c73194142fdc9b725e7ca433267f1c4aaa3afe67a37567da"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
