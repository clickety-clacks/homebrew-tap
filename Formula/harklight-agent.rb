class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.8/harklight-agent-0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "e0670401a5f306cbc7d13f4060995e67f40ca04d5000a6545215a662dc0c978f"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.8/harklight-agent-0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "02a124095dbe937f06d855b57c06558cfa841380bfdf8e1b2eff1436c00af66e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.8/harklight-agent-0.2.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a01ec971c68f5ae83ff826fc4e512d6d0c6c40023433ee6ec108e83c071d228f"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.8/harklight-agent-0.2.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c39d9da22fb8d5abb96c9e1284d2e737f514bf0e07f92f504062780f1972390e"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.8", shell_output("#{bin}/harklight-agent --version")
  end
end
