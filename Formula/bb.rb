class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.17.0/bbcloud-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "11119be7efc51b94db06cd86b982c878d46394568f7a2e9bb76735f05de83f0e"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.17.0/bbcloud-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "93600eb2a00ce6f89de1ca55a512b4d76aace0c30a4f4fb52808635498b250db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.17.0/bbcloud-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d19e04cd7d65743a2939b14c578442962c09bdf97d8c6edb4c2a81beb78377b8"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.17.0/bbcloud-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15954f210342a912d341f372681a6392bf331f4d9938979bc0796c3e79ee20fe"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
