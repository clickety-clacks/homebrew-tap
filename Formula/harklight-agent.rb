class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.5/harklight-agent-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "b600a4c042a02c690c03c33420e0da3a9a3340f7bed325024a0887cc1076c04f"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.5/harklight-agent-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "5dd5618977744c41548f5fe06bf13515c0e41c7694278e1f452cba104693678d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.5/harklight-agent-0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab64ee232ef4d6cf1b346fa7477851e898c083552a728cb7ae69064816bc1301"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.5/harklight-agent-0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8fcfeff9f3a09217624294862c56b76d9d3eee354356b628c73449dbbd3f6146"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.5", shell_output("#{bin}/harklight-agent --version")
  end
end
