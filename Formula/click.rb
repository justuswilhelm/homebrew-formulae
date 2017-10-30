class Click < Formula
  desc "The Click modular router: fast modular packet processing and analysis"
  homepage "https://github.com/kohler/click/"
  url "https://github.com/kohler/click/archive/a09bb3eb8e68d00906e60b54e44d211ddf49e62f.tar.gz"
  version "a09bb3eb8e68d00906e60b54e44d211ddf49e62f"
  sha256 "ec7e32387d80b6261242f2be1325ade20490810d1f6105dca4c806a33256f0de"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/click"
  end
end
