class Pmkit < Formula
  desc "Blueprint setup for product managers who work with coding agents"
  homepage "https://github.com/biokraft/pmkit"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/pmkit/releases/download/v0.1.0/pmkit-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9d9b961e8b1d127a562612be2fa7384afd94e11554ee34b6e640e2171f37794a"
    else
      url "https://github.com/biokraft/pmkit/releases/download/v0.1.0/pmkit-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "db0c6718737d5f04e99d540cf263f573f509591a935c7b3ab4ea86cf76c95718"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/pmkit/releases/download/v0.1.0/pmkit-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7655d7374c2b3942d1e08c7141cd8a72b221bf335ce46e6e50198788091d5b7e"
    else
      url "https://github.com/biokraft/pmkit/releases/download/v0.1.0/pmkit-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d41658bea214cbe201726b9c0fb840cd8410057c084c4515e974b9747529b989"
    end
  end

  def install
    bin.install "pmkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmkit --version")
  end
end
