class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.9.3"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.3/cella-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "61bb08c5632be0de902bda3f3338a62f1da0836bd0370e7866d641ead5243395"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.3/cella-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "760b989773745ab61f2a148c2bb82479de30ceda4168c5aab690521d1e24f5fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.3/cella-v0.9.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "205551bc0f5e60d191b13d3a13091ef2ffb3d40f70de465c8f020511f24c134d"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.3/cella-v0.9.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38c3396500b469d9db75dbd126104847c22808bb29c633aed662927e91a3747a"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
