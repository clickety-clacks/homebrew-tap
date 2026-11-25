class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.4/harklight-agent-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "897dc4100bc5b26eb38b026577f53ff66a79cc620284f0df618aec17f5b15d75"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.4/harklight-agent-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "5af2cc928bb7ce400dbb7d534a06acac67f60a437ebac02d9db282826591fefe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.4/harklight-agent-0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b033990f4cdd3e5e13c66338d2ef4d94c142d323e331ecbca0c55fd71c6ac43"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.4/harklight-agent-0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "248ab2557ba5c1a382d924e4aa797d09e52181ba3ac8638b90051b45afa6db92"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.4", shell_output("#{bin}/harklight-agent --version")
  end
end
