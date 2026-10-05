class Termadoro < Formula
  desc "Focus timer for your terminal, kept by something very old"
  homepage "https://termadoro.com"
  url "https://github.com/bobbydotdesign/termadoro-releases/releases/download/v0.3.3/termadoro-aarch64-apple-darwin.tar.gz"
  sha256 "b77338c3cc1b39348bbde9bf7aa08adf4df8fd7e786323c06db6b49ba2a831da"
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
