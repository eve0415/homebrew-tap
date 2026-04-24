class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.34"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.34/cella-v0.0.34-aarch64-apple-darwin.tar.gz"
      sha256 "88f1d54da739bceeffa9cf584546e806456280526bc116d366bc95b8e3d451b6"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.34/cella-v0.0.34-x86_64-apple-darwin.tar.gz"
      sha256 "e6a9eeb772327c17ed066b7b595dc7a26bb52c299e7ea5ad25b0b748e5eee952"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.34/cella-v0.0.34-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61296e3f82a48e46f61e2ee2795fbce3e4edf3af48c572b1cc7d554d0c608bea"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.34/cella-v0.0.34-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e751eeeaf5e14774021b447fe77c71860fff31c44955eed95f7b69166b6ae94"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
