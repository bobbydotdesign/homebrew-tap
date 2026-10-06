class Termadoro < Formula
  desc "Focus timer for your terminal, kept by something very old"
  homepage "https://termadoro.com"
  url "https://github.com/bobbydotdesign/termadoro-releases/releases/download/v0.3.4/termadoro-aarch64-apple-darwin.tar.gz"
  sha256 "bcca2e33c0650256f3e2b251dbb53e6b58717d54047f1b67146a8b3e56af9030"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "termadoro"
  end

  test do
    assert_match "termadoro #{version}", shell_output("#{bin}/termadoro --version")
  end
end
