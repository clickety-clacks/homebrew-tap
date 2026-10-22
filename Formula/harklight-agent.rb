class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.1/harklight-agent-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "22ecd49affaecef819696d9f1662f50d332b9883ac69d2618540c605cba08f68"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.1/harklight-agent-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "0ed761a3849ddd2eb0f7518c4e3851c6bf8c5e0e7aa598138c698df55a9b05ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.1/harklight-agent-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffe4ea0969c4f0204fff5de65138cf11fd7f34ccacffc6c557ba00692505d11c"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.1/harklight-agent-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e087b09578b353b729e1011b2555196a3f46093942b67d80705165940434344a"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.1.1", shell_output("#{bin}/harklight-agent --version")
  end
end
