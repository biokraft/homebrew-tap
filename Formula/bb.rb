class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.26.0/bbcloud-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "976b4ea14ec7deb70548d1214cb791e28a30ad83ba07bf6914ca5871ab8d5591"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.26.0/bbcloud-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "77af3a31c230c60cee8844b9249750ea01906188209a890f898cd30ab93bb00f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.26.0/bbcloud-v0.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "669aa86f14fe74c4a124b0d6b51687dd532a4e3c134f9b31d4834e4cf67885a7"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.26.0/bbcloud-v0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "172af1a256f5a06eb4e7e1c872edd93ffcde031021ded4e2e62129c51939f5e0"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
