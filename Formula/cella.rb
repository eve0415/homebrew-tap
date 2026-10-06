class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.9.6"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.6/cella-v0.9.6-aarch64-apple-darwin.tar.gz"
      sha256 "a08eab921af4465cc1dab0b9ef0acecd6a5121360db8d51bd844697893cf12e8"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.6/cella-v0.9.6-x86_64-apple-darwin.tar.gz"
      sha256 "2b3df28e99ef1cfb12517f7e3b1decea6b514838d97e8a34389ecce28cea9483"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.9.6/cella-v0.9.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d1cad656347178f8194f19c56723b2ae6ca995e9d5ea2312c1b16d6eaae814a"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.9.6/cella-v0.9.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5768304fc6520e3e11c5faa8a6f720c105ff589328a701a796f7c9f1e66fe838"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
