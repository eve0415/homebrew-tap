class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.7.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.7.0/cella-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "f265a544f8832d2327a5aeef6ab406c3391df3e766cab39ec789cad3dc7b0fdc"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.7.0/cella-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "bd4a5147064b148bd3e52d4f8be53b9a8dc378fcdded12de501c2dbae701a98d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.7.0/cella-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "68fe3c1b80a151b91221ab31b8c8476a39f946e62f880b43d1708976048efa87"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.7.0/cella-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e996ed0cd3f414e260858bb6bad219c1662edd297d281bbf9dc510f3ad68085"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
