class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.20.0/bbcloud-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "b912a328566d7738e98a95bc1bc875113b6ddbb9aa2641085f23da7d513b6583"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.20.0/bbcloud-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "f63481c2e5e13372c844275c8fa153266cd730e29f295f123bca0946996e5c33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.20.0/bbcloud-v0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0cd65ba9aaf76ec7c8db61a59b76a3f4cb1142882c9e7a3745b3686f3c71b86"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.20.0/bbcloud-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42bb51435c92ad29173181141251db3f16a7ed0d76ac9a2df86e3c3459874bc0"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
