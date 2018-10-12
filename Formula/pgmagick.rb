class Pgmagick < Formula
  desc "yet another boost-python based wrapper for GraphicsMagick"
  homepage "https://pypi.python.org/pypi/pgmagick/"
  url "https://github.com/hhatto/pgmagick/archive/ver0.7.4.tar.gz"
  sha256 "a3cb2d5fec6bd8aa63fb0fcfd819ae97c602582df94ff62b0bca0360a75758f2"

  option "with-python2", "use python2"
  depends_on "python@2" => :optional

  ## not support yet
  # option "with-imagemagick", "Build with ImageMagick"

  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "graphicsmagick"
  if build.with? "python@2"
    depends_on "boost-python"
  else
    depends_on "boost-python3"
  end

  ## not support yet
  # if build.with? "imagemagick"
  #   puts "img"
  #   depends_on 'imagemagick'
  # else
  #   depends_on 'graphicsmagick'
  # end

  def install
    if build.with? "python@2"
      ENV.prepend_create_path "PYTHONPATH", "#{lib}/python2.7/site-packages"
      system "python", "setup.py", "install", "--prefix=#{prefix}"
    else
      ENV.prepend_create_path "PYTHONPATH", "#{lib}/python3.7/site-packages"
      system "python3", "setup.py", "install", "--prefix=#{prefix}"
    end
  end
end
