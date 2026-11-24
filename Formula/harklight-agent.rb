class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.1/harklight-agent-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "f4127b6fc43fd33b525ccdcd43330916c9b26f85d689a1486993910c03f638a5"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.1/harklight-agent-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "959f6d48618f56993fa5d1a5b13f049f4e7a4d7a1cba6f283d3edbd965842f26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.1/harklight-agent-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "720c825ec953faaf4dd7c30036b6ce3caf91d12ecab6ef388f1d57aede42dba0"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.1/harklight-agent-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0eecd8910fede108446f357aba85e9b50e0dfc6ae9180051f2b1032a645314a3"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.1", shell_output("#{bin}/harklight-agent --version")
  end
end
