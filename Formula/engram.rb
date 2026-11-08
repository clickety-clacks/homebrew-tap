class Engram < Formula
  desc "Local-first causal index over code history"
  homepage "https://github.com/clickety-clacks/engram"
  version "0.2.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.12/engram-aarch64-apple-darwin"
      sha256 "cdd1eafde7f5ca8503c4a0c09b1db0e89e6870e09f9225885728ec3607492634"
    else
      odie "Engram does not publish an x86_64 macOS binary yet. Add a source formula or release asset first."
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.12/engram-x86_64-unknown-linux-gnu"
      sha256 "72807aba640af675f84b3dd1655f3207ed73f2cfed55f8e22c173c5c6a5dffb4"
    else
      odie "Engram does not publish a Linux binary for this CPU yet. Add a source formula or release asset first."
    end
  end

  def install
    bin.install Dir["engram-*"].first => "engram"
    chmod 0755, bin/"engram"
  end

  test do
    assert_match "Engram indexes agent conversations", shell_output("#{bin}/engram --help")
  end
end
