class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.11.0/bbcloud-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "60f93ee68d77abf6c91dc9f3bbddeaf9d78dbee4215cf55ee61dffe88cee42a0"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.11.0/bbcloud-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "9b657ecbc37fe492cc99589cfc5fa51e33491f642c4bf8761798e429cf517f50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.11.0/bbcloud-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1fff22ef050ab75e5a50864b09a1e8c34e68dd04a4637c6a3c169259cadcd60"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.11.0/bbcloud-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ab9546d04a3e21bb974e003305d9f0b824375752bd7c2fa69abe175d3237960"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
