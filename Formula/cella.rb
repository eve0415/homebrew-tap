class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.14"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.14/cella-v0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "5b6c4127be3718491535deacbe7d9e75286ec84df323d13d27beb67835c28374"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.14/cella-v0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "bac232fc0c8b0525b8a987dcc4e8868c72e38002809213794e26c7ee8808fd82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.14/cella-v0.0.14-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d4128752bc417c78ee4d117cae7f29a4469a60159c63771f98aa64e279758a3"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.14/cella-v0.0.14-x86_64-unknown-linux-musl.tar.gz"
      sha256 "618c9169cbb9c003444727a536bdd5c4a30ed781930632f9b69ec3ebffcfc2e5"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
