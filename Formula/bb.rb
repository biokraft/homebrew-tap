class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.26.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.26.1/bbcloud-v0.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "700f8b16bd3e81804e04c8e13756a1dd6c8d93c7c25414cb5f9b9694dd50f90e"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.26.1/bbcloud-v0.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "0fbc4ac91c3462de3f52d74e68ff9d0c10ce318a0af8426387e389bde8e89f31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.26.1/bbcloud-v0.26.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7159ab965af44b5d7574e286c0e378831f8c02d88fd8bae14b9b0b5bbabf49c"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.26.1/bbcloud-v0.26.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07f450f0b85d33dcb798215071ade71251b784aace56fc8cf4c16bd85faf5d00"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
