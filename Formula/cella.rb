class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.28"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.28/cella-v0.0.28-aarch64-apple-darwin.tar.gz"
      sha256 "994fb16959318cf79fa3e45240ddc8840696d16348b4aef06e8747d45a9cb0da"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.28/cella-v0.0.28-x86_64-apple-darwin.tar.gz"
      sha256 "f20864f438c7c2d5ce75d7a4ab28570837d93008a67bc1484e05f7d758b71842"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.28/cella-v0.0.28-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6ad2f5fc3acbb8f6ceb4fc53f0f807f91508eca695f01d302188dec8315bb78"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.28/cella-v0.0.28-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15fe897640abb4f8ddcd350b77420438432558883da2fb45398765b2f30ac7c2"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
