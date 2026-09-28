class Termadoro < Formula
  desc "Pomodoro timer for your terminal that thinks it's an arcade cabinet"
  homepage "https://github.com/bobbydotdesign/termadoro-releases"
  url "https://github.com/bobbydotdesign/termadoro-releases/releases/download/v0.2.1/termadoro-aarch64-apple-darwin.tar.gz"
  sha256 "68f32cbd51869ffea3b6e290ab5a442158d7749afdacfeab2ef4696be75a8b58"
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
