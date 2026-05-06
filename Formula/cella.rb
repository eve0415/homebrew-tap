class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.48"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.48/cella-v0.0.48-aarch64-apple-darwin.tar.gz"
      sha256 "2bd3313a3f2dc480bb4abcea0dde945d666c2e78c1c0493400f0be87956f73bc"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.48/cella-v0.0.48-x86_64-apple-darwin.tar.gz"
      sha256 "90f7824b5ec311245d4d2c32c42943b67579f5c3d22e606a4a322d7f62105ba4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.48/cella-v0.0.48-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1495640cff93fa3511a7974ac5cdab6fe1606384952d505a8ed9977d023ef7ef"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.48/cella-v0.0.48-x86_64-unknown-linux-musl.tar.gz"
      sha256 "394a7cb0f14dc6520232c89105712b2dc83d98c96d363fab6aa26f926f6f9f27"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
