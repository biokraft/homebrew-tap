class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.17.1/bbcloud-v0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "60e6e75962f7ec6c37d960328d3479b48fc02da3a38b2bb077ed46c39c77fc07"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.17.1/bbcloud-v0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "f2d20ad88bbc423ebb0af09e10ee511baf11913ec8c00a9be27c16ac936fb13d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.17.1/bbcloud-v0.17.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09a740b8f5f931c8b12760675ddeb3019bbceaa310dcc46d6e4dd7990ae0fb26"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.17.1/bbcloud-v0.17.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0d15814ce3ad56eeb11f5c5209f176d15ae179ddd8dae027cf1310ccc40b2b1"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
