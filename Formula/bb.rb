class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/biokraft/bbcloud"
  license "MIT"
  version "0.18.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.1/bbcloud-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "f58fa9c498ab9da3a1ae4450a96a9d8ff6d63dff34d7054c9b9dcfd8fa61f91f"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.1/bbcloud-v0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "d583398d7287f5ff9fcea5b8ba03c77a8ba001a92e89217c44c96f094aa81012"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.1/bbcloud-v0.18.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9285299d73ed1a62bf5eb31db9e25c7458469b1eb369df9bd54067eea2bc4746"
    else
      url "https://github.com/biokraft/bbcloud/releases/download/v0.18.1/bbcloud-v0.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f3cbcd281a6ef05bb67a9a6789edc6a4505240c7f5369cf6221038830449234"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
