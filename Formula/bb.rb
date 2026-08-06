class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.1/bbcloud-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "8350c3b867b4f5cd38c33dc7347339251d57d4b0f187d4f00075491c4ce30b31"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.1/bbcloud-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "afefbf6c11ac4b32f2a914de94cdc18ab56afe92e7b1b55baaa64cda0408e8e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.1/bbcloud-v0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "907467b8825bbee0d2ce3a0f47f933fbe240f5a328902c77521fce9edc1fbfd3"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.1/bbcloud-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a27904228efe5bac1ce7d1a657cfebbd881eec044937c7be78f343366017f9d7"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
