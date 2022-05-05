class Epo < Formula
  desc "Handy epoch converter"
  homepage "https://github.com/wtetsu/epo"
  url "https://github.com/wtetsu/epo/releases/download/v0.0.4/epo_macos_amd_v0.0.4.zip"
  sha256 "e2aac7afaadf1a398fdd1af37c74e24658c3e75577399dece48eacde05285ffa"
  license "MIT"

  def install
    bin.install "epo"
  end

  test do
    assert_equal "0 1970-01-01T00:00:00+0000\n", shell_output("#{bin}/epo -p 0 Greenwich")
  end
end
