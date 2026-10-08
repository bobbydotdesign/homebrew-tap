class Termadoro < Formula
  desc "Focus timer for your terminal, kept by something very old"
  homepage "https://termadoro.com"
  url "https://github.com/bobbydotdesign/termadoro-releases/releases/download/v0.3.6/termadoro-aarch64-apple-darwin.tar.gz"
  sha256 "3ff3be14806c220ea20af3a979bec0c719b014ce52be81fd5dce6d9cb22b3074"
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
