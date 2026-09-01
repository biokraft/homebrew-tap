class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.19.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.3/bbcloud-v0.19.3-aarch64-apple-darwin.tar.gz"
      sha256 "2253880318914f8b0eee7356949b16749e5cc6f982f7c0034ee163e7de78010b"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.3/bbcloud-v0.19.3-x86_64-apple-darwin.tar.gz"
      sha256 "6fe297a3578f60ab110ca32137dbe16a9468cc8a9efd5ca6a35b7c30bb1b98ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.3/bbcloud-v0.19.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74b25679dacca3f93a015e20f5dabf1dbf6bb8160ac9f5a713793fcfceaa9e39"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.19.3/bbcloud-v0.19.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e257365a60484c4c3f1950b76424e2daa5feb3adaae964135277797bc7d96aec"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
