class Engram < Formula
  desc "Local-first causal index over code history"
  homepage "https://github.com/clickety-clacks/engram"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.2/engram-aarch64-apple-darwin"
      sha256 "f7915b1493e00ead28a9f63155eb1525ad88404bc03b88afe04341d6b18b5b6d"
    else
      odie "Engram does not publish an x86_64 macOS binary yet. Add a source formula or release asset first."
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.2/engram-x86_64-unknown-linux-gnu"
      sha256 "41e31a0ae1990b6dce96861d3a2d4347e5db8ee92742e7bd415a561141091315"
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
