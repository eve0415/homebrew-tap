class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.9.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.0/cella-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "ec5722e2b37b4ac144c586d9c0a9c10fa50c7875ec4e7e3ec87741c597548933"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.0/cella-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "d35d9261f333c499af2ff0dcbc46b75cb509c202f714941352288bd45875e785"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.0/cella-v0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8661cc93244807af98ad318dd70197dc933c42ec27a0218771e4e49dd4d67a17"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.0/cella-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da7520e2221bae835148dea904079cb7353cef760328b35ca9f5d2076bd057aa"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
