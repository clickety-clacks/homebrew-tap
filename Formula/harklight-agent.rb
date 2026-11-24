class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.3/harklight-agent-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "f1a24efa9485b80fd89b0a5375a95a7f859beb4c054e6acdb72378a176ec32e3"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.3/harklight-agent-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "5548d8f12d3c20cdcd9dbab729f9dc8b1338210a9f3515f7613497666f58d36c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.3/harklight-agent-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c52a32a392e2cd6bb0b808b358100c02428070ca20cc06a7ef6cfc7915a3aba9"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.3/harklight-agent-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a79579ae960677d955ac50cf48fe0f2ee0473d5032190b0c7af47da91546f668"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.3", shell_output("#{bin}/harklight-agent --version")
  end
end
