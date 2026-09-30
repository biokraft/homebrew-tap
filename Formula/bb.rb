class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.24.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.24.1/bbcloud-v0.24.1-aarch64-apple-darwin.tar.gz"
      sha256 "58c219501a4e9c39ccf7fbb7e64aacde2c74e55775bf1b4fc0f57d585fe5ebae"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.24.1/bbcloud-v0.24.1-x86_64-apple-darwin.tar.gz"
      sha256 "25076ea131ed537749d6c86537cabed0605273e44d3dfd14bd4ec3909822a50b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.24.1/bbcloud-v0.24.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b69e0dffecc666656b73d3841e0ecf11f4e3f376226e9cfbb16f94ee17f609a"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.24.1/bbcloud-v0.24.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ab90dc2df0c63c6ff82d8f37e2e2b4f4868b1b0a87142b7c2226ec8f7cf8402"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
