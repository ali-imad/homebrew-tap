class Whatson < Formula
  desc "Check what's currently playing on the Criterion Channel"
  homepage "https://github.com/ali-imad/whatson"
  url "https://github.com/ali-imad/whatson/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d4b41183fbd593ec9a345de47e1813f569e1063b6cf5d04416a997c437ffaa26"
  license "MIT"

  def install
    bin.install "parse_whatson.sh" => "whatson"
  end

  test do
    # Test that the script can be executed
    system "#{bin}/whatson", "-h"
  end
end
