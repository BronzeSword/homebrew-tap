class Getwebp < Formula
  desc "Fast WebP converter — JPEG/PNG/BMP to WebP, zero native dependencies"
  homepage "https://getwebp.com"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.2.1/getwebp-macos-arm64"
      sha256 "09cb417dc0fb9d6ffd519ba35793771cede8a5813b696e379f0156180f1f2f95"
    end
    on_intel do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.2.1/getwebp-macos-x64"
      sha256 "9766aea4f884c07b1aef5cb9ca3505972ee1bf022936c7d71065d7214ac4dc73"
    end
  end

  def install
    bin.install Dir["getwebp-macos-*"].first => "getwebp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/getwebp --version")
  end
end
