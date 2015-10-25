require 'formula'

class Pgmagick < Formula
  homepage 'https://pypi.python.org/pypi/pgmagick/'
  url 'https://bitbucket.org/hhatto/pgmagick/get/ver0.5.12.tar.bz2'
  sha1 'ba75b74eb17e8756c2ff2406e743e7400c1d6ab7'

  depends_on 'python'
  depends_on 'boost' => ['with-thread-unsafe', 'build-from-source']
  depends_on 'boost-python'
  depends_on 'graphicsmagick' => 'with-magick-plus-plus'

  def install
    install_dir = "/usr/local"
    system 'python', 'setup.py', 'install', "--prefix=#{install_dir}"
  end
end
