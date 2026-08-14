class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.15.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.3/bbcloud-v0.15.3-aarch64-apple-darwin.tar.gz"
      sha256 "6badc0d44fc4be4b88960d9a2e7c9634c0720335def816e39b9f52d9ead3f447"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.3/bbcloud-v0.15.3-x86_64-apple-darwin.tar.gz"
      sha256 "0bef3750789490577bdd656b14de8f912de8568b44ede08a675b115b5771dfde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.3/bbcloud-v0.15.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bbdaa45b1d506086d9913fa2823c40c84b00adf23e14f65325e333907bf83cf6"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.3/bbcloud-v0.15.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa84dc542aec8372b8ab4d2aa2f1d2dd36362ec4c78b141b0a66c6eebea69a90"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
