class Iodine < Formula
  desc "This is a piece of software that lets you tunnel IPv4 data through a DNS server"
  homepage "http://code.kryo.se/iodine"
  url "https://github.com/yarrick/iodine/archive/05dc792d86ecada826f67b57de5a49bbe38ec874.tar.gz"
  sha256 "4dceb6782926b96d543ca92c506f41de81b84eb55a28a313641b77a8b3dc56a9"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/iodine", "-v"
  end
end
