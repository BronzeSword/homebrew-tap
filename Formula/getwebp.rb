class Getwebp < Formula
  desc "Fast WebP converter — JPEG/PNG/BMP to WebP, zero native dependencies"
  homepage "https://getwebp.com"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.2.0/getwebp-macos-arm64"
      sha256 "a85d49d732ee8376de24cfcdfc0889e7037105fac578828b70a5ab3d53c26e7e"
    end
    on_intel do
      url "https://github.com/BronzeSword/getwebp-cli/releases/download/v1.2.0/getwebp-macos-x64"
      sha256 "1e4cca762b474fa7578e5c1f056938a7a248f9807ad2bbe32d3bc15db036a4a2"
    end
  end

  def install
    bin.install Dir["getwebp-macos-*"].first => "getwebp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/getwebp --version")
  end
end
