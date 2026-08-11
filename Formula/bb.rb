class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.9.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.5/bbcloud-v0.9.5-aarch64-apple-darwin.tar.gz"
      sha256 "363cfee61e44e73bc5717800012bf22bfcd87440726fa41b7e808813b47e4b0d"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.5/bbcloud-v0.9.5-x86_64-apple-darwin.tar.gz"
      sha256 "f3c4110416aac430ae62fb6f45b03adf45528da91e7caa010b3e6eeacac44d3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.5/bbcloud-v0.9.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fca56af8aff28913e131866e024f42da14df70391cfae90447de7ea1ca8cef75"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.9.5/bbcloud-v0.9.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b31c6a80ebab775941282557a2d084d876418abe9f3e38352849b1d14e361119"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
