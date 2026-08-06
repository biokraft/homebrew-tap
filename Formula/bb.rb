class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.2/bbcloud-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "7a05efed4088ca532f8217758994b07dd6615a2953be0eaba069f6fec96dbfe5"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.2/bbcloud-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "cbdef3053e3f33bf486815637452dbeada36e505ef3d5d8639a9ebe845efc80a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.2/bbcloud-v0.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d13ac0d4717f5006e981546c85bb91e30bdbd78824a726e5bdf0c170f224ae3"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.2/bbcloud-v0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6c3fe974cf04fa078bfc61ac570322f79779134ef92b12b8456a724bf5fcce4"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
