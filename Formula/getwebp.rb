class Getwebp < Formula
  desc "Fast WebP converter — JPEG/PNG/BMP to WebP, zero native dependencies"
  homepage "https://getwebp.com"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.0.0/getwebp-macos-arm64"
      sha256 "d1293de1d929e152169a866e11a186f431ec63c01e1c4f778252813042328eb0"
    end
    on_intel do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.0.0/getwebp-macos-x64"
      sha256 "deef0ae1d0cddf9db03608a8ef40ceec9b05c862604b9a13f67013ad805db4a0"
    end
  end

  def install
    bin.install Dir["getwebp-macos-*"].first => "getwebp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/getwebp --version")
  end
end
