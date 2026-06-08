class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.3.4"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.4/cella-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "3363660869fb162e715dd56648a5f82b66cdf23f7d2cd785d6b6d46be3bd1e43"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.4/cella-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "9b70f367b0c4cd8161ff0559632e5e3dbfe9f7b7cf57201a5759931ab34452d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.4/cella-v0.3.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9dcf2dd1cf85dfebc1571a736bc8f87fb4dc524543c9732983062092589e96d0"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.4/cella-v0.3.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3b7d356640266dcf281d4af96394c60b79b3caa2a653a513cc3b6cf035ab366a"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
