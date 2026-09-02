class Pmkit < Formula
  desc "Blueprint setup for product managers who work with coding agents"
  homepage "https://github.com/biokraft/pmkit"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/pmkit/releases/download/v0.2.1/pmkit-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "729bcef336023f7a70f2ee5719587fd0fd2763600f64294882c1bddafd5fc582"
    else
      url "https://github.com/biokraft/pmkit/releases/download/v0.2.1/pmkit-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "60134c49c310174b8ab14440b6d5f57d50671d8f3b64cffffcb834a2cff8f578"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/pmkit/releases/download/v0.2.1/pmkit-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "025bbf96ac3207accde46dc4070c2e809da5cac628bbfe0ec6b6ce7c7c9d3a40"
    else
      url "https://github.com/biokraft/pmkit/releases/download/v0.2.1/pmkit-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4d10e2aa33a7c10cd916dfc09010b2cb1c8b5d82efc46dcb2f1359a219e6218"
    end
  end

  def install
    bin.install "pmkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmkit --version")
  end
end
