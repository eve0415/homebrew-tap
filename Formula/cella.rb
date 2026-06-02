class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.3.3"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.3/cella-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "03514a985e84d39f977e2dbcd1152692a6e3e2c8e53955a649fd363f3c04d724"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.3/cella-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "883cc2d6363e4f3097c18dc4211a97883aa1f4205bcf45afe09cdeedc4282b27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.3.3/cella-v0.3.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b357f14dfb81aff1dc8d14e2222fd333c83edaaa00cfd02dc4da9ad6e9f7bbbd"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.3.3/cella-v0.3.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e046fb62a3ee853b239434325c9ec02219a28bcdb98a17e938c1be98c32591cb"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
