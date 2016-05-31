require 'formula'

class Pgmagick < Formula
  homepage 'https://pypi.python.org/pypi/pgmagick/'
  url 'https://github.com/hhatto/pgmagick/archive/ver0.6.2.tar.gz'
  sha1 '381d27893d9ba0dec72580e6111b83044270b59b'

  ## not support yet
  # option "with-imagemagick", "Build with ImageMagick"

  depends_on :python if MacOS.version <= :snow_leopard
  depends_on 'boost' => ['with-thread-unsafe', 'build-from-source']
  depends_on 'boost-python'
  depends_on 'graphicsmagick'

  ## not support yet
  # if build.with? "imagemagick"
  #   puts "img"
  #   depends_on 'imagemagick'
  # else
  #   depends_on 'graphicsmagick'
  # end

  def install
    ENV.prepend_create_path "PYTHONPATH", "#{lib}/python2.7/site-packages"
    system 'python', 'setup.py', 'install', "--prefix=#{prefix}"
  end
end
