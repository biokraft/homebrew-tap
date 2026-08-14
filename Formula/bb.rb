class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.15.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.1/bbcloud-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "1b693ef03b71f3ce30c842c72f92abec0db7511f53bef855d0c2477c7c298507"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.1/bbcloud-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "a1df6f71737cb3be9771c3636726ac9d7fdffa27bce7ac7536925b184ffd8ba1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.1/bbcloud-v0.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef28ab9bb507b9979493bf3275a11d56a13d4e65488a1f9923bb4d9e1147ab9f"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.1/bbcloud-v0.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9323b325b5746129002248362a946f3dc58f5423d991fbcd19cf6bd5a6a45ff7"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
