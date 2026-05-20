class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.2.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.2.0/cella-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f534a6bb48c3d9bf721bc0a28747f42b7514dfc78d1d392e18ca6cf5a148c472"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.2.0/cella-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "dc38f26aea781e6260251d8a413f20b994caf933d24f95ac515379e4cd5cf21e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.2.0/cella-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46ec769fe82e4642c7852b77c10ca7df29f99712b3ecfef4e8d45a6de302fac6"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.2.0/cella-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bac17cf1534044f04f10eb02e09939439a24f2fdde8276898fc31f0028d72978"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
