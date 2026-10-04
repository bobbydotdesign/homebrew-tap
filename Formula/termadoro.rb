class Termadoro < Formula
  desc "Focus timer for your terminal, kept by something very old"
  homepage "https://termadoro.com"
  url "https://github.com/bobbydotdesign/termadoro-releases/releases/download/v0.3.2/termadoro-aarch64-apple-darwin.tar.gz"
  sha256 "a7ff325de3a451499d9c23a87dfa040e5d47b2ecc0ce173bbfb00a14459c5310"
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
