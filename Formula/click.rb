class Click < Formula
  desc "The Click modular router: fast modular packet processing and analysis"
  homepage "https://github.com/kohler/click/"
  url "https://github.com/kohler/click/archive/a09bb3eb8e68d00906e60b54e44d211ddf49e62f.tar.gz"
  version "a09bb3eb8e68d00906e60b54e44d211ddf49e62f"
  sha256 "b8d6e24e85ec96996c85797f8480e539f96623a84ad1d4a3cb052979467050a0"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/click"
  end
end
