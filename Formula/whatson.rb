class Whatson < Formula
  desc "Check what's currently playing on the Criterion Channel"
  homepage "https://github.com/ali-imad/whatson"
  url "https://github.com/ali-imad/whatson/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "ec5d1c29c7c99a9a8d8e831e8ea4cd45c4a1bb7e9a8e32a9db9ae7552d23acce"
  license "MIT"

  def install
    bin.install "parse_whatson.sh" => "whatson"
  end

  test do
    # Test that the script can be executed
    system "#{bin}/whatson", "-h"
  end
end
