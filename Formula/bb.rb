class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.25.0/bbcloud-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "72d458205f9d64ce2554d5aad66f492a87aed2ef6840f58398c252d3af1af733"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.25.0/bbcloud-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "be946c9540adb8328391c4221ed0fbecb30c9cbabd0714e05e1b32e394bc3f6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.25.0/bbcloud-v0.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35aa6f2b85e2f7a96373f4bf287ba98898fbc13c1275b36140bbf219f7c951cb"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.25.0/bbcloud-v0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b275df363bb92729e2a709b07ee560a717b198ae7c481dae12211a6074492ba5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
