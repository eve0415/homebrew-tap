class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.8.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.8.0/cella-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "c245b8e2bfed1fbb1d7f4d62737587a74ed4fc20c8c444cdb1769a6f2ff5b4f2"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.8.0/cella-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "2ca439f89188640403dcd3620a6f94f86574d8499930880ed63066872e7260a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.8.0/cella-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6b0e5e27beee8466bcd92a00a41880e94aa6ec9fbc116a8b14ccc15035485bd"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.8.0/cella-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83ebd745ab970e39251694e423491fd8d91ba206e210a6eb881de9332a96c184"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
