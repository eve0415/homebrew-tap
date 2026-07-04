class Cella < Formula
  desc "Dev containers reinvented"
  homepage "https://github.com/eve0415/cella"
  version "0.6.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.6.2/cella-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "fccea2cde5383a3fd2b4469d89a50be33e1f962f6de670215d13e1d47756f300"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.6.2/cella-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "4007255882615e6a7e2a06e8b1665453ce8b543289aa9eb2951992c2b3aec44f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eve0415/cella/releases/download/v0.6.2/cella-v0.6.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d929838032d2458e3415b3476dfa00169bd458f48e829031fc9d106856a1eea"
    end
    on_intel do
      url "https://github.com/eve0415/cella/releases/download/v0.6.2/cella-v0.6.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f286ac8df3334f6b26846ac9c616760ed629689cbf0b4c61c5ca0d2fe6888ab0"
    end
  end

  def install
    bin.install "cella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cella --version")
  end
end
