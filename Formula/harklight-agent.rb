class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.2/harklight-agent-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "5a62af0ef3568705b77fa24b7cc1a3be8946f4b3203e0b823aaccb45eb03944a"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.2/harklight-agent-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "bd9688c4ed67a6e640dbf9a4dcbdf5a0552dd98613c683e738f2047197f34d43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.2/harklight-agent-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f532ecfd0fe5b1eab438a927eacb9c9c338f3ab1e69d02869de0f677d2b9270a"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.2/harklight-agent-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "62d8f65f15eb1aad127d73252841d19c23bd3ce3fb69a8ad041e2ee0c6389251"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.1.2", shell_output("#{bin}/harklight-agent --version")
  end
end
