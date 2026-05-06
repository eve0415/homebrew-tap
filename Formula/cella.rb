class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.49"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.49/cella-v0.0.49-aarch64-apple-darwin.tar.gz"
      sha256 "668ff78617a141826226bfbb70ec83f70ae9fc75f210e1bcdb9d37585c793364"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.49/cella-v0.0.49-x86_64-apple-darwin.tar.gz"
      sha256 "1fbd387023c07013b1c45adfffd1b5ee360b80a427c78a03b98dc97ae2c935cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.49/cella-v0.0.49-aarch64-unknown-linux-musl.tar.gz"
      sha256 "547386cd8b48fdfe806f031296c07f58ce916540dc8843cb3839841b681321b7"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.49/cella-v0.0.49-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cce4913fe8d0f279e6c283a758f920d48988fdabe112246ae04906de6f2a1c2"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
