class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.18"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.18/cella-v0.0.18-aarch64-apple-darwin.tar.gz"
      sha256 "304b825300215f9c6ea6b3b1fc5a5d71863120f05991c54b986c5e1d21f83144"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.18/cella-v0.0.18-x86_64-apple-darwin.tar.gz"
      sha256 "5a003cc70b887527571c07462a7781dcbbbd1fffbb20b6cbb78efff00c2edffe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.18/cella-v0.0.18-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff7bb858cab533b4fc136b77352018cd6d5a745e66769ef63dff3770b54738bf"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.18/cella-v0.0.18-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1df300214925f4cb5f7d22d6354839e02e0fc6eea2998eb4022578d22a0139a0"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
