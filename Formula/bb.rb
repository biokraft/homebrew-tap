class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.18.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.2/bbcloud-v0.18.2-aarch64-apple-darwin.tar.gz"
      sha256 "62a331f481d3f25cd4ab568f2e17414df14095aa56fe9dc40be31e24762ecd94"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.2/bbcloud-v0.18.2-x86_64-apple-darwin.tar.gz"
      sha256 "da597c55b3705b3869eb8e028ed65e9d6df2d3462b046d450ed0c7dc6a30340b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.2/bbcloud-v0.18.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc5574ec412212767d94bfcaed495bf2e8576bf563690ee44e3c31bd79d39b4f"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.2/bbcloud-v0.18.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dec044e4ca74ee218c0d58a7aeaf86c6f087600982907ca82132568b4720bc33"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
