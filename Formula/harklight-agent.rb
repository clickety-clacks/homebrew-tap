class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.6/harklight-agent-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "9f33f45ffbf199111962db6a56889fb7797132b4ea3ee834156e2fa91af75695"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.6/harklight-agent-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "fdfc49d254e6d2d8aaa6be6066c845dcdc6a4bd1a86abce6c09cd84e6cecd937"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.6/harklight-agent-0.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "848cefae9d32d4ad770fd72f245256446fa4ef6b0e9fbb64e1e3e25db9a6166b"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.6/harklight-agent-0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1149f89c6e4396a74473ca6c6849b73ef9ef5f2bbe51b4b3f69ab4efaa9d36fd"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.6", shell_output("#{bin}/harklight-agent --version")
  end
end
