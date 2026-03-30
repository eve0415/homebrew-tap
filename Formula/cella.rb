class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.10"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.10/cella-v0.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "e2a4d25b34cc46bd3a8fde63aa5a3e42e4a1a95c5940e328f8c15061df614516"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.10/cella-v0.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "8473d064045bd030a591d82be39bdc48adbc7555bd8d42defc63277768765527"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.10/cella-v0.0.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df68e6692128f9b8df2bc215e78f3b853b9f0054394c14b0780fd8e83301dd9e"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.10/cella-v0.0.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dafe05670e823982af9032a394df4cab054df49aff85c172382d7741e1cc98bf"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
