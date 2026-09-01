class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.19.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.1/bbcloud-v0.19.1-aarch64-apple-darwin.tar.gz"
      sha256 "34c7c4e26dc00ab768f0be8a5fd5c63081cb07cbc55d5afc2fd292961751717e"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.1/bbcloud-v0.19.1-x86_64-apple-darwin.tar.gz"
      sha256 "60e53fd2492f804c136d56ef2835742d5418b004b6a3fdde2539d9ccc5bddc6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.1/bbcloud-v0.19.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6ca3bb8fe2f1bbacb3a4874ec19be83e36f9f3fb7ac3465c688252d658d7161"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.1/bbcloud-v0.19.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "784bef8f62c036153009368044e2d8efa46d60e595b1a36e2e068f6b2d64ec3c"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
