class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.13.0/bbcloud-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "32b1840363ef1ff0b04b7a14a75e2d2d281deafd9fecf43e9b59236604bc668d"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.13.0/bbcloud-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "e5a4e8ff392f171c4a0a4cc2930d4799d71886a8696ac1363d6b30a18e82db05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.13.0/bbcloud-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a8e5234de67f753fb48e99423c682e89bca17059150f2d9f1aef8b50ab92355"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.13.0/bbcloud-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3a5838003396e3d6804ef1d68a91d16d9c6a060fa4bfe2631c88dc58af03b3f"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
