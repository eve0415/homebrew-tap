class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.39"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.39/cella-v0.0.39-aarch64-apple-darwin.tar.gz"
      sha256 "93389989024af7252b04ee7deacbf6b7507b77e7ddb86427a847fcee38bfdb7c"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.39/cella-v0.0.39-x86_64-apple-darwin.tar.gz"
      sha256 "d3edb054782a925962873c7924e3b044b0bc080b680943cb38217450dd19bfe3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.39/cella-v0.0.39-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a60ad4a9c0438c5e9e65a1098585bfdfed4b05207465c225149e0276238832c"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.39/cella-v0.0.39-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb5d0b3b14c27c105dd8cc153a192eb226c8077cd6fbf9c7a4ad91451bf65099"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
