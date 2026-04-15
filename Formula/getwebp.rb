class Getwebp < Formula
  desc "Fast WebP converter — JPEG/PNG/BMP to WebP, zero native dependencies"
  homepage "https://getwebp.com"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.3.0/getwebp-macos-arm64"
      sha256 "35f240ef4dd6346494f80a1adf1f923e238669b3fc86920e3d2f74cc94ea79eb"
    end
    on_intel do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.3.0/getwebp-macos-x64"
      sha256 "b54bffdb8e54cd8b8f14bd4dc2a6c5b53f04d1d656257cda593152bc6af87aba"
    end
  end

  def install
    bin.install Dir["getwebp-macos-*"].first => "getwebp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/getwebp --version")
  end
end
