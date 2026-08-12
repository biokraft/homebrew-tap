class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.11.1/bbcloud-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "669e63b2c46e4f10b89f623f89aeb36ea15a4870fdc88c59719b6b4a1ecc13d5"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.11.1/bbcloud-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "9e441ae35d41ad815e524158a428d4c6d3f6ef38122b2d781c97779211790228"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.11.1/bbcloud-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75eb737b42812baa1c032c13b68e513ff8d17e693b1bfd03737eadfe0ba35770"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.11.1/bbcloud-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2707d9742c445b3dd06320136f9e9abe6e88753d55bc312f6bd5d542217d6920"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
