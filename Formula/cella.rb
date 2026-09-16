class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.9.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.1/cella-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "1d2524f3aac2d059ca7f137a3585f073ad6c8d30a3e5d9e4de8018874317f7a2"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.1/cella-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "c598ad1fc5d8edad5534abadacf620ba2c25b1e814640fbd502042a550d54d9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.1/cella-v0.9.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2aceb0ce6cdd6f73d97175beb2cca78e6091933c018bb45de9712c22a94f88c2"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.1/cella-v0.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ff1671bc611dab913d6601bbd9de39cf0c4c9ae78ed5a64ff6ec4d1d503a0fe3"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
