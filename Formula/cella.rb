class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.23"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.23/cella-v0.0.23-aarch64-apple-darwin.tar.gz"
      sha256 "48ffb09047bac72d9b7862a4a4f47bcecf0e7403ad161fd889f2a4db38595294"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.23/cella-v0.0.23-x86_64-apple-darwin.tar.gz"
      sha256 "095af83dccceb4c93195bc8e6a091630726827e55c42ab9eba50c18dab74541b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.23/cella-v0.0.23-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ae55908002bbc567f0f128a5d5f5a2bfb26150ca02b891be463b1a1c96e8fae"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.23/cella-v0.0.23-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6643700d14ce3bd3a298cdd0df1b1a623a29875bfdcd9adc2dc3cb812ebe0bc0"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
