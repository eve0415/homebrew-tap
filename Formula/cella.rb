class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.33"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.33/cella-v0.0.33-aarch64-apple-darwin.tar.gz"
      sha256 "8a9122e89f8c9ea94a647aee7fd6581bc51ee36d094938ab8cc0113bc4a63183"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.33/cella-v0.0.33-x86_64-apple-darwin.tar.gz"
      sha256 "a698a89510290392bf63d800c6dac7e91c96789d5730d5eec8f6a3dd2aa2da25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.33/cella-v0.0.33-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0b22aabdb8d0d5ffd18593295013e5dee4e8259ea622acf09a5c70db13bc48cf"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.33/cella-v0.0.33-x86_64-unknown-linux-musl.tar.gz"
      sha256 "54a3037f50a0797bf516dc5116d56c098708633fde10d26199256cb5148201a7"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
