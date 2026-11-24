class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.2/harklight-agent-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "29080975a767421d3bc4354281dfe48b73bf754d482ccfb643b17b8ac3d7fb96"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.2/harklight-agent-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "56632e6d4b8cb83641c17a5392f1a343ca18a50c3b586a8c5f193691b5d4e96e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.2/harklight-agent-0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4746237b17e52d03dbe5f94a6726d5485993b68263090dbf09a66864831d7af5"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.2/harklight-agent-0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f271a3adef335b5c10e21a21d26d6ec0b1322a5aff91faab0446b4db5f01193"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.2", shell_output("#{bin}/harklight-agent --version")
  end
end
