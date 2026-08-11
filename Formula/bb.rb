class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.9.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.4/bbcloud-v0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "689e1c372aca06aa49e74c7198d71cc9e9cc0266f7b8576e5c33c87b90b4216c"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.4/bbcloud-v0.9.4-x86_64-apple-darwin.tar.gz"
      sha256 "acac4845da5c3d6ab1007fd54a484d767c90c7b3fd3f457e4a05441db7a1ba01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.4/bbcloud-v0.9.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "311cd9a617d378165a7f33837525a3ba6c15441e482cb0b9ef0057ad03880978"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.4/bbcloud-v0.9.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f66362b1da482b7011e9e63f238b4da8d3ad67b7e8f2fbc93abec30b4ac77bcd"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
