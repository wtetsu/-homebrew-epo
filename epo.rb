class Epo < Formula
  desc "Handy epoch converter"
  homepage "https://github.com/wtetsu/epo"
  url "https://github.com/wtetsu/epo/releases/download/v1.0.1/epo_macos_amd_v1.0.1.zip"
  sha256 "b2d740ddb38136bfab7ac9f2b0c0a36e85f6a7ea9d01302ab4d6c3a0966120a7"
  license "MIT"

  def install
    bin.install "epo"
  end

  test do
    assert_equal "0 1970-01-01T00:00:00+0000\n", shell_output("#{bin}/epo -p 0 Greenwich")
  end
end
