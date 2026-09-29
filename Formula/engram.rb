class Engram < Formula
  desc "Local-first causal index over code history"
  homepage "https://github.com/clickety-clacks/engram"
  version "0.2.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.9/engram-aarch64-apple-darwin"
      sha256 "3a066b8697a316e788b45a2949fa84f33aefdb99665ffbab20202364d0f1185e"
    else
      odie "Engram does not publish an x86_64 macOS binary yet. Add a source formula or release asset first."
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.9/engram-x86_64-unknown-linux-gnu"
      sha256 "f4a9e78da6984dce0cd6a23453ea37e423cdf0a82c11ca911456075b490b3349"
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
