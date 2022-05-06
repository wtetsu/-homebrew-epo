class Epo < Formula
  desc "Handy epoch converter"
  homepage "https://github.com/wtetsu/epo"
  url "https://github.com/wtetsu/epo/releases/download/v1.0.0/epo_macos_amd_v1.0.0.zip"
  sha256 "eff39bef9d2428b4a32dd8461ce9dfa2317137804e4d50980736a724c6ea40f1"
  license "MIT"

  def install
    bin.install "epo"
  end

  test do
    assert_equal "0 1970-01-01T00:00:00+0000\n", shell_output("#{bin}/epo -p 0 Greenwich")
  end
end
