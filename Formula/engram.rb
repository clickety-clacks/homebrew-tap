class Engram < Formula
  desc "Local-first causal index over code history"
  homepage "https://github.com/clickety-clacks/engram"
  version "0.2.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.14/engram-aarch64-apple-darwin"
      sha256 "d0597572c8eb07e2ed2bf5b64f54c2bb7fce87339c39e02902a6444f230a3a18"
    else
      odie "Engram does not publish an x86_64 macOS binary yet. Add a source formula or release asset first."
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.14/engram-x86_64-unknown-linux-gnu"
      sha256 "4e75c534e5e0e350accdeaee30a55d4b8ad64e845cf361b3856263d42948515e"
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
