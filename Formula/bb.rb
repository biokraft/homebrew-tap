class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.16.0/bbcloud-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "70e7a3121f1f137d12032ee6ad16d657c043bf7b45ef9bed721e45fc1bf7b416"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.16.0/bbcloud-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "5cbad48fb0847861dcba01f303cc2601db2d4b4b17ee90d8d094c42473d1e1f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.16.0/bbcloud-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "497b5457cde618c92d65bbc3ca7b72370633821a8301d25a19246feb969a7cd8"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.16.0/bbcloud-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9306082bff7ceac1a478269bd14455abd3bbae9a1f0d7df274640a8716fa77c1"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
