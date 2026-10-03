class Termadoro < Formula
  desc "Focus timer for your terminal, kept by something very old"
  homepage "https://bobbydotdesign.github.io/termadoro-releases/"
  url "https://github.com/bobbydotdesign/termadoro-releases/releases/download/v0.3.1/termadoro-aarch64-apple-darwin.tar.gz"
  sha256 "208771ac83c333411c27df7d740836fbba201bb03348112e281b91d12dc1fa42"
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
