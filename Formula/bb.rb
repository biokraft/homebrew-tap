class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.3/bbcloud-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "1b9efc7fa56711491df6b9a5fe73304643de1a37ab36e6f806ed54b78881b7c4"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.3/bbcloud-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "ae4f8c2afd71ee8edcbc5e184a03c934d0032f7bce13c6f4ab49feab4a88ceeb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.3/bbcloud-v0.9.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7d219f5ec35996d0bf5789977191708be2b63abd9e012d0bb07c5fa7711d747"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.3/bbcloud-v0.9.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad48a4c9f3890cb24acdaf654f6af80a5926cee26f3d88aff5cbb6b8d8e3926c"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
