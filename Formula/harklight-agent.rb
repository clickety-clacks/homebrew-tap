class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.3/harklight-agent-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "db291fab2220684d11e733c5f2d6c694b5303e145e075c9618d91cb70094b04a"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.3/harklight-agent-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "3cb0834063e21883d49f573649c87c57fdaae726ad5775d0e90cffa488698015"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.3/harklight-agent-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5127062c74581eddac37b7cec9900dddc70a80938eb95074bad7f6dd992b8bb"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.1.3/harklight-agent-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa3704dd8b78b8117af0e6033e97fc715e6a6449f9bf29eefe49eb9f476a00a9"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.1.3", shell_output("#{bin}/harklight-agent --version")
  end
end
