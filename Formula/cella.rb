class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.9.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.2/cella-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "58627b5882b8a30df23c05c4f94664427e038ab4e016a57822ff0145b4d102e9"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.2/cella-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "0bc1fa9fa93576c6608cee2228d74bab56795fc1ded1cd91b8eaec5a1e7570a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.2/cella-v0.9.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c98c239b7b634348ee130aae69ee24479b6d0b1cb3e48f30d8f631fd7fbe181"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.2/cella-v0.9.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "555a792bfb8b29c37a03fc6b0c9e98e248cd95c260d99f9460566020a46f009d"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
