class Xiki < Formula
  desc "A shell console with GUI features"
  homepage "http://xiki.org/"
  head "https://github.com/trogdoro/xiki.git"

  depends_on "emacs"

  def install
    cd "bin" do
      system "./clearxsh"
    end

    prefix.install Dir["*"]
  end

  def caveats
    s = <<-EOS.undent
      To complete installation of xiki, run:
        xsh
      EOS
    s
  end

  test do
    system "#{bin}/xsh", "--examples"
  end
end
