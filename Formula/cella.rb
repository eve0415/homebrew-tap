class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.41"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.41/cella-v0.0.41-aarch64-apple-darwin.tar.gz"
      sha256 "ea3731714d14587080f4c7e9cc60cfa21a41876b71d79a4d622891f1b687c952"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.41/cella-v0.0.41-x86_64-apple-darwin.tar.gz"
      sha256 "b7218847b1613ddd88406eb4b2b3cb07d4c99d9ead2601a1d627df03b4e4b4ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.41/cella-v0.0.41-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a009b6c65c2c2afbb7f2c112243ee94ed140e222ea824b9c8e32bd821fe669c3"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.41/cella-v0.0.41-x86_64-unknown-linux-musl.tar.gz"
      sha256 "811e6ac11ea2863ebe1614141ff6dc817b1ed4b3e97c878078459131039bd467"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
