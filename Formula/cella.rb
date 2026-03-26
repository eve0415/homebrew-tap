class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.6"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.6/cella-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "7eec9ef81933357db432a3f42763afe660e0f75c00871480573de5590eed63ab"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.6/cella-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "6a01bfc3605770459c7125b18069bd2bf0b7b63ee8952205ba302ab720165279"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.6/cella-v0.0.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a3d71c50484aec3927f7b4f76e73a7ee4781e8b9193cd73f7937936259ae9058"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.6/cella-v0.0.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0036c640e88a2a4b74bc1f526a68cdb570a57405a20fc5b29663bbefa10867d5"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
