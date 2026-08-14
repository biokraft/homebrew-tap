class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.15.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.2/bbcloud-v0.15.2-aarch64-apple-darwin.tar.gz"
      sha256 "b57b03819eb2f9ab3e8663a8614e53fc029c5963b4c1c1f5050f10c66d92be56"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.2/bbcloud-v0.15.2-x86_64-apple-darwin.tar.gz"
      sha256 "a7550d7331297e882c732327e21c866f9978d1b7d50844022f88b171291c61f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.2/bbcloud-v0.15.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cbb0d94c38b1cf0da2b50e701a1b03ef75a306955d76c14ae78d84d6d6de44be"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.15.2/bbcloud-v0.15.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e354dba70d088b6c85bfc7d885b795c74e9bcf2a662d7a70d7394e1856514ce"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
