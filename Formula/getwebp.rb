class Getwebp < Formula
  desc "Fast WebP converter — JPEG/PNG/BMP to WebP, zero native dependencies"
  homepage "https://getwebp.com"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.0.1/getwebp-macos-arm64"
      sha256 "ede7b2e0ea18cbf380f8762615b878d62bb964bb1c40c12beb139519368af019"
    end
    on_intel do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.0.1/getwebp-macos-x64"
      sha256 "42da51ae8c1e60b45e9b5be2aac33f0169ccea05072c8701115986555d68073b"
    end
  end

  def install
    bin.install Dir["getwebp-macos-*"].first => "getwebp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/getwebp --version")
  end
end
