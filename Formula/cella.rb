class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.4"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.4/cella-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "ea65cbd71c0ad2905b1191aa81ef3dee82da277e8ef3ab16230103fbc1d6fb0e"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.4/cella-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "61a03861adbd513242f04019d84594c80ac93f1441db6049acb8f4c3d15404df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.4/cella-v0.0.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95a03d6a11d5d1aae35530a4d2ecc2e61517ae896d485983197aa14176e5e3f8"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.4/cella-v0.0.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "34818841d8159eccbf9f54b0dead34a3b7d4ec9c54d4d5d4c7b7a6a2e63ca509"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
