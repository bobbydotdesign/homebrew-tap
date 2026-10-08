class Termadoro < Formula
  desc "Focus timer for your terminal, kept by something very old"
  homepage "https://termadoro.com"
  url "https://github.com/bobbydotdesign/termadoro-releases/releases/download/v0.3.5/termadoro-aarch64-apple-darwin.tar.gz"
  sha256 "68c8ebab31b0444fefa2b2122f5c33ae8be5cac53b5ae412f5a69a23437b245c"
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
