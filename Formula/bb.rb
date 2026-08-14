class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.0/bbcloud-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "63337491e2cdd8b9004523391fbf65d92ba431656b75129c954146f2268c999d"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.0/bbcloud-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "c838a77ce90dfea921beff4e848238907fceadfd1cb665da683fbc4f7084ee96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.0/bbcloud-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be95678dc6304888a7a8d02026502a039e62f9a37cbb805ee958080666a2f8ef"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.0/bbcloud-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec67250e72d2071759926fa1ea71f0127bb75c92af685dea860a91caec79ef9e"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
