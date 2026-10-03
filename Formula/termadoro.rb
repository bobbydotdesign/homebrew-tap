class Termadoro < Formula
  desc "Focus timer for your terminal, kept by something very old"
  homepage "https://bobbydotdesign.github.io/termadoro-releases/"
  url "https://github.com/bobbydotdesign/termadoro-releases/releases/download/v0.3.0/termadoro-aarch64-apple-darwin.tar.gz"
  sha256 "5f17afea6f5a7fd20227e841a94308023144b4af5d65024805e80670918abee0"
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
