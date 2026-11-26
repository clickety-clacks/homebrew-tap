class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.9/harklight-agent-0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "3eee9090ad2f5453e336e492b83d15fd7a75baa2c4e2a8a1eb23f904f4f3e2b2"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.9/harklight-agent-0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "c73333740bf368a53c64bc70da1a0de703a48561c5fcf8f081178654a42891e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.9/harklight-agent-0.2.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27ac12fef8c07d47885ba1ddd90cb871927297c4b9f7f5bc3b15c5b0ee864cb1"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.9/harklight-agent-0.2.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9482d92a2754fd733e6058f7d52ecb2d5b672ca6edbbfc7526f9da3c2daa2d67"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.9", shell_output("#{bin}/harklight-agent --version")
  end
end
