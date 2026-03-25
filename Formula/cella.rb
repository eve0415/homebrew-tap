class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.3"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.3/cella-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "12a523f23554bfcecbfdf1499711b9c03fdd32670b413d8da9c524eb7501bb86"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.3/cella-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "683bb95e7b8700068f422b8768d5cedb993e4a3bc16e8a3a4d2d099dd203f771"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.3/cella-v0.0.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c880301a1ac9b4991b8eecc11047137e2568fe4bd8df546291e26d9da10a3949"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.3/cella-v0.0.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ea1b90f7951dd0e8641fdf92c0c554e1b76756b90529715ac20b696bdea8351"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
