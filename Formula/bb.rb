class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.10.0/bbcloud-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "f73e1d8710d62955e56903bc7e90e23444061936116b1226ce9109d83d82d419"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.10.0/bbcloud-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "51627de45507e03de38d652b79337796c01bf705b3db4423bd52fff34833f114"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.10.0/bbcloud-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85be017155075c8bd2b67a01e9dec70437febb0400b0142f26248c123e7dd007"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.10.0/bbcloud-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2dbfada82abacfa09fb200a8303c8a14c7eeaa316651268b577d2bc5ccdcf98"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
