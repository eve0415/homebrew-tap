class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.10.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.10.0/cella-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "36599c8450804ba11c1cc08b4172b7da5f545adecc575f2cd7a62dbd47a61622"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.10.0/cella-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "52a8aa9c2ac65a34ab342d30727f75ce15ed8fb59f07c1acff60b86a6d5ff9f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.10.0/cella-v0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "162f5af1ad79f3df9785b92d5b7945ff69d9b5a6f1bb1c3effd300c975cd4823"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.10.0/cella-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc0a2697f00de85ba970f366ddce8829553ff19840a92d76fe4a77007380a6dc"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
