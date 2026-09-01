class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.19.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.4/bbcloud-v0.19.4-aarch64-apple-darwin.tar.gz"
      sha256 "aa8dde7dbc3316b373282dc280579a99c2cb8b688b0daf73fdc0ce9e131487b7"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.4/bbcloud-v0.19.4-x86_64-apple-darwin.tar.gz"
      sha256 "ba0ab8a89b80e2d60972e99c8b00578424cca43e41c79dbb6213c796093fa93c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.4/bbcloud-v0.19.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f17ed1f58f183b1120ed96ea77219ba0519ef5f27132581d57d507c3e2e5a919"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.4/bbcloud-v0.19.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a531717909012710076cca491f5f83271db29a5713caa979d2b3ce0a38cf6ab"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
