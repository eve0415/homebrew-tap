class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.16"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.16/cella-v0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "7266446e84579c1c9ae5231e5978a11db283dbd33b1af1258533307635adf93d"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.16/cella-v0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "d5dddd7cc5ff516407986c554fef2dd9fb97aeb4257cbd77663fabbf7977bc1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.16/cella-v0.0.16-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ba33a48f91afbc724cc8ebfd5ae0a7d1ea2064223256c2e548276108c8d510d"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.16/cella-v0.0.16-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc9a70571e2db475fe21133a51d57b2b71bd079f6a77475405dfd12117b26a2f"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
