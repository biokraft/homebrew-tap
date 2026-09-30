class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.24.0/bbcloud-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "0c8768cf8d02aac82243ddbe5aaa2af2cf4f94e544502c9efd964daee1e97cfd"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.24.0/bbcloud-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "9ae8bc3954897241316546bb1d9a6cd6377263c78764bb993daf6f4598e9f090"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.24.0/bbcloud-v0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39f02c736b8a342bf6a947e39e21a87ac62d1910ef4ee65e2b944c0fb1e294b6"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.24.0/bbcloud-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9220a99885f511252cd3f43b598e40fe7fd9fc573cb4739ad69af6d811ce405f"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
