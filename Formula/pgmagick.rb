require 'formula'

class Pgmagick < Formula
  homepage 'https://pypi.python.org/pypi/pgmagick/'
  url 'https://github.com/hhatto/pgmagick/archive/ver0.6.1.tar.gz'
  sha1 '9bdf3116b81568fe0effd386ffbd75214b83f66f'

  depends_on 'python'
  depends_on 'boost' => ['with-thread-unsafe', 'build-from-source']
  depends_on 'boost-python'
  depends_on 'graphicsmagick' => 'with-magick-plus-plus'

  def install
    install_dir = "/usr/local"
    system 'python', 'setup.py', 'install', "--prefix=#{install_dir}"
  end
end
