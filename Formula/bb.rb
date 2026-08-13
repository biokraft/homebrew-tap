class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.12.0/bbcloud-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "6fbc906563e6938484b4b369d656cab4d64b4036c40c26b2a598a265775361b5"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.12.0/bbcloud-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "c76b2fa3306d22d96a4117fe7137e8af568bb87f71e68a2e4a1881ea44e16eec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.12.0/bbcloud-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4114a08bf4d487bf36552a999a22deef190e2860039519ce4845e9803b70778"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.12.0/bbcloud-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3c4a397c19ff0e2b3ef32c210dedf49f3209dd8d767041e4d4193e11b2feaba"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
