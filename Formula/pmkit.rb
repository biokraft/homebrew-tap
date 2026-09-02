class Pmkit < Formula
  desc "Blueprint setup for product managers who work with coding agents"
  homepage "https://github.com/biokraft/pmkit"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/pmkit/releases/download/v0.2.0/pmkit-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "423cadf3143a67857c92f0dfacc2620ed9b26ca920bd1c6dd25695a2c7364c0e"
    else
      url "https://github.com/biokraft/pmkit/releases/download/v0.2.0/pmkit-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "ae11ce87c149bdf6ad6beeba6e798865c761087fa304b43df74de1714aa86534"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/biokraft/pmkit/releases/download/v0.2.0/pmkit-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecb153276a9f5d234a4e4744413b4cbfa34b31573678076dec80a21016237481"
    else
      url "https://github.com/biokraft/pmkit/releases/download/v0.2.0/pmkit-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97bc275f7d08857e14423eb2d49151b26a2822a62043e4a7e7aee82958d8aa08"
    end
  end

  def install
    bin.install "pmkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmkit --version")
  end
end
