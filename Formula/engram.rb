class Engram < Formula
  desc "Local-first causal index over code history"
  homepage "https://github.com/clickety-clacks/engram"
  version "0.2.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.15/engram-aarch64-apple-darwin"
      sha256 "a559dfda65cae69c76e8b982f50d69ec935cd259e7829186deb20190242b7d22"
    else
      odie "Engram does not publish an x86_64 macOS binary yet. Add a source formula or release asset first."
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/clickety-clacks/engram/releases/download/v0.2.15/engram-x86_64-unknown-linux-gnu"
      sha256 "17774f98d9a3e2dda1fba24fc16ce7a59aa9fd53224fffc7b1d4adaac2696468"
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
