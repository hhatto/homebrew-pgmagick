require 'formula'

class Pgmagick < Formula
  homepage 'https://pypi.python.org/pypi/pgmagick/'
  url 'https://github.com/hhatto/pgmagick/archive/ver0.6.tar.gz'
  sha1 'bdddb477867d94c64686130f9dc9d15f5408ec29'

  depends_on 'python'
  depends_on 'boost' => ['with-thread-unsafe', 'build-from-source']
  depends_on 'boost-python'
  depends_on 'graphicsmagick' => 'with-magick-plus-plus'

  def install
    install_dir = "/usr/local"
    system 'python', 'setup.py', 'install', "--prefix=#{install_dir}"
  end
end
