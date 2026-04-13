class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.24"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.24/cella-v0.0.24-aarch64-apple-darwin.tar.gz"
      sha256 "6478bcf9fcd6aa15a87c63899b0bcc7a2a39dcb1da4caa554bbb3df560fd091a"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.24/cella-v0.0.24-x86_64-apple-darwin.tar.gz"
      sha256 "108f3dac3ff15946c5722dfc57c30feb0c7ae4153fd172a36196c2476de1c480"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.24/cella-v0.0.24-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f44467619717592274d385e816dc9f9c745fc9825c34354e46bf9aab4aeed4d"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.24/cella-v0.0.24-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d4601c3b990aad5f4fb7cb95088ad775023d1c3b0bd27e6f07007cf0df0d13f"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
