class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.23.0/bbcloud-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "3f86b01587e373e5779e0793b1aef119a4b9787bc5f5e6f3ee2ef4c15305c928"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.23.0/bbcloud-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "695c6ccc88029882cc52439720e4a0ac561258eba4e535bfc105006f3dfb9838"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.23.0/bbcloud-v0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63d9325e7201cee1f4cfa81a08e14df410912580c287ef340b4bbd19929b9e1d"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.23.0/bbcloud-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1c92a4e0477e3d052799658b88b846842e629d3a585b8b499dde5ea7bb66fc5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
