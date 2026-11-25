class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.7/harklight-agent-0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "366bb1c73516cb1a8e96a84a92cef8ab597df1be05f06d3cdc949b6ca5a5f5cd"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.7/harklight-agent-0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "e9b230f8a543c78963225a436207fb7a3dceed6e4235353897330f7503a83607"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.7/harklight-agent-0.2.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "472ccea3191762d9379d3b843add9fc7bdc74df5a3cba945adad7a22539d1190"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.7/harklight-agent-0.2.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a42f0d557d3a175b5e10667b2f57944516d53708759c33ce242881ff7bb6996"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.7", shell_output("#{bin}/harklight-agent --version")
  end
end
