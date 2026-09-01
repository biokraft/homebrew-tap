class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.19.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.2/bbcloud-v0.19.2-aarch64-apple-darwin.tar.gz"
      sha256 "5b610cd1c3a0efa8eada59d3b90dcf64acf663727c26bc4bed67564cf2dc6f9e"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.2/bbcloud-v0.19.2-x86_64-apple-darwin.tar.gz"
      sha256 "1adf7542b5da9804cb50e0f48ec147fd49f39dcd611b6504371f6586789dfc1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.2/bbcloud-v0.19.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "993c0f435cb6a3199b642312c747143b4778740cb439f6ae68cfff41bc20a849"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.2/bbcloud-v0.19.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "226a249ab143dbbe70487dcce98653aeb95513731e907b2636dc714042805e77"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
