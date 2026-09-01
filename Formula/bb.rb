class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.0/bbcloud-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "184153430b4c5808f84abcdd4f9924f45d66c254f52704c70b0cabdc39e7146a"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.0/bbcloud-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "afcb8fedcedf4d57718f2e3486e1d09faf946cdce3badc6c938a1f7d03d8c631"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.0/bbcloud-v0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "992cc59bf8f4bbce37287aebedbca1a100de69947f69c2a3ea79e0f2017c5d44"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.0/bbcloud-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "888225f928248b89f4f23456fd490261a4c1dbd5e94170547f695674fe1891d3"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
