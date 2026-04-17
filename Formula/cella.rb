class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.26"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.26/cella-v0.0.26-aarch64-apple-darwin.tar.gz"
      sha256 "82b2f2c425c5dfe7c9f9cb675ec554d362d915bc7380fbff84433c63e02564c0"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.26/cella-v0.0.26-x86_64-apple-darwin.tar.gz"
      sha256 "2f6d92478ce028eae72373a3e1d032a71551bcf019e03bb57321293e9d386f88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.26/cella-v0.0.26-aarch64-unknown-linux-musl.tar.gz"
      sha256 "11309593e787f5711a0cfc3bfdd8306cd96065b172bcf7dd2bea40479e2494f7"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.26/cella-v0.0.26-x86_64-unknown-linux-musl.tar.gz"
      sha256 "825cc35d0e07e04871a302ef89a94ae1445cdece0d0b43537548264ca53bafb5"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
