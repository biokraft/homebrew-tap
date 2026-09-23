class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.22.0/bbcloud-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "8fc0d2897c075b97b09f70ae19c60ca34fe37fa3dda8c6917b08a86cf59cbafa"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.22.0/bbcloud-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "c1207ac97859c1f69eaad5908ab3e79bff3bf5e28679d728f0e7916b88ff4b28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.22.0/bbcloud-v0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57af7b4d47020c0665d3b21a2a9a06f3b8494b2e94e1005cc71cf492e253417d"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.22.0/bbcloud-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "083fd5d855db8cf13384051340b1a07bbd7e9cd682e752e7b24aa4ebc22fff21"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
