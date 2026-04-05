class Getwebp < Formula
  desc "Fast WebP converter — JPEG/PNG/BMP to WebP, zero native dependencies"
  homepage "https://getwebp.com"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.1.0/getwebp-macos-arm64"
      sha256 "25382c4403bcc715ffff843880cdd71308563a22fcc2cbbd11d7358a291e9c20"
    end
    on_intel do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.1.0/getwebp-macos-x64"
      sha256 "fe01a4e44e8e3c8b634177d404c3a10458de8879706d38586c23d5e23c545c4a"
    end
  end

  def install
    bin.install Dir["getwebp-macos-*"].first => "getwebp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/getwebp --version")
  end
end
