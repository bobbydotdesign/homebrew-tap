class Termadoro < Formula
  desc "Pomodoro timer for your terminal that thinks it's an arcade cabinet"
  homepage "https://github.com/bobbydotdesign/termadoro-releases"
  url "https://github.com/bobbydotdesign/termadoro-releases/releases/download/v0.2.0/termadoro-aarch64-apple-darwin.tar.gz"
  version "0.2.0"
  sha256 "922c8c42186662e15a2d2cc32d9a4eb78b9f8cb8db0e8b835ded33fbee0d4366"
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
