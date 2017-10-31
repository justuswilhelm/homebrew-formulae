class Iodine < Formula
  desc "Iodine dns tunnel"
  homepage "http://code.kryo.se/iodine"
  url "https://github.com/yarrick/iodine/archive/05dc792d86ecada826f67b57de5a49bbe38ec874.zip"
  sha256 "4dceb6782926b96d543ca92c506f41de81b84eb55a28a313641b77a8b3dc56a9"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "iodine", "--version"
  end
end
