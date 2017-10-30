class Gnugo < Formula
  desc "GNU Go is a free program that plays the game of Go"
  homepage "https://www.gnu.org/software/gnugo/gnugo.html"
  url "https://ftp.gnu.org/gnu/gnugo/gnugo-3.8.tar.gz"
  sha256 "da68d7a65f44dcf6ce6e4e630b6f6dd9897249d34425920bfdd4e07ff1866a72"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install", "-j"
  end

  test do
    system "#{bin}/gnugo", "--version"
  end
end
