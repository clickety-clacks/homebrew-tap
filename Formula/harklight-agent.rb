class HarklightAgent < Formula
  desc "Send request-bound Harklight conversations and listen for replies"
  homepage "https://github.com/clickety-clacks/harklight-agent"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.10/harklight-agent-0.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "d194f9a9682632e5433290c205ecc32cfba1e8b032a3bf110132e56f4e3c8081"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.10/harklight-agent-0.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "e28f5021431ddb4168d87fb7290a378d481821f23ef3665dfc8392543f90ff32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.10/harklight-agent-0.2.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a29b5416a3e24663495c83d3637bd23b5007749aac14f9cf56128123991e43e"
    end
    on_intel do
      url "https://github.com/clickety-clacks/harklight-agent/releases/download/v0.2.10/harklight-agent-0.2.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a7d9200e343265ed52205c89fd07d71a6d77c9595d742dee18e30e89e6ba3f0"
    end
  end

  def install
    bin.install "harklight-agent"
    doc.install "README.md", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "harklight-agent 0.2.10", shell_output("#{bin}/harklight-agent --version")
  end
end
