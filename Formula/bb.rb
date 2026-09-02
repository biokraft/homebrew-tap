class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.21.0/bbcloud-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "5f44c8cee76c66a353498c60e9af21943da27d560d712c33f645b4ad279449a8"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.21.0/bbcloud-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "461d91b6aad577b05fc2c963524c5ebcc57d20c5182ae3032e5ced5b49266cc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.21.0/bbcloud-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e28700bf03d16834d9a0d1ef6c3e3c1ca291da1795d0f2172f9dd63393e7f631"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.21.0/bbcloud-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3f882fce6ac2f2f823f3112ecf6f3e72af4f963431c7804c3223b206531fa14"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
