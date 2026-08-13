class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.14.0/bbcloud-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "e92d34f916620383eee1aa70cfe2717327bb86bff042dd29e4c5d066d66acecb"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.14.0/bbcloud-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "99cd0bf246597d6e422bfdfd89f0bb6a48f0ad515987e9a2aa1876cd12a58be8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.14.0/bbcloud-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f746d0478bcebb3c4e41b7dfcbf978ca537db6172889dc58b837f4a792db162"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.14.0/bbcloud-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a49c425816d0f7661b5b6730ac85de2f8b149762817be6cd24bfcc7f6804d892"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
