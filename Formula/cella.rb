class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.9"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.9/cella-v0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "f2833213050a2fe4e6aa35af02440cf088775b9fc0204f940364b6f066f1e6e4"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.9/cella-v0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "23b83040f5a7982ea021858c500b79afdc8677cfe5aad73593ef594dd4755071"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.9/cella-v0.0.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5d8845e74ca45f932610f00b06d015bf211ef3f43714587a41e9f5c151f3f613"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.9/cella-v0.0.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bd4b65949eca214486b2231cd22bdca2d35ee8f0eb4f5c6e785ce22e1b3a4de9"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
