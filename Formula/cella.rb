class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.0.35"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.35/cella-v0.0.35-aarch64-apple-darwin.tar.gz"
      sha256 "f1296f86f08a1ffcd158f237ec78e60e887d6dd53f810aec4364e5e2795d9142"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.35/cella-v0.0.35-x86_64-apple-darwin.tar.gz"
      sha256 "9870917278fd43b8a81ef5bb02fa0092fe6b2b8d45690edc33c00e51377a26d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.0.35/cella-v0.0.35-aarch64-unknown-linux-musl.tar.gz"
      sha256 "810427454e6e77c61d09e3fd696896b543b9b00ed82885663eb3ac2644a44f76"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.0.35/cella-v0.0.35-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c95239cb65515454177b7dbca7d82aee298d256dee9691eae3ef3beda9d257c"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
