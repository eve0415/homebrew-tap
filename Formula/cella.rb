class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.47"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.47/cella-v0.0.47-aarch64-apple-darwin.tar.gz"
      sha256 "5dd14cd66077f93950cf82acf549676026a8fde595c276a4caf8f1d1f0f4fbc0"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.47/cella-v0.0.47-x86_64-apple-darwin.tar.gz"
      sha256 "ec23c3303773e778f4c7731145db010e9216cd9427ec938f8e5a7e681de5f04f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.47/cella-v0.0.47-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d382016d53156e69f1954f4cde9d9fb048fbca9c9fad301a1c0f9a918b28296e"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.47/cella-v0.0.47-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1b051d5797849221c55e4188b0e87b948751e2bf40b7de29ef201af5bb06914"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
