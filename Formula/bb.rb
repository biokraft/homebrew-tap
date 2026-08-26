class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.0/bbcloud-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "10798c5ba292d8dbd5d0157100fdec9fc7745c34209cb77525b10007ce34d882"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.0/bbcloud-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "77854d5dc1dde536ff7233f485286396328e16b87bbf7881897b915cb5f11f6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.0/bbcloud-v0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1db99893fd7d8bcb10ec3e85b5187aa2e210363832702f89a7b7f7aa417f2683"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.0/bbcloud-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6fc9c9cce3e4594a181fb563be726adca525a47687b20d67ccadc32540728c5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
