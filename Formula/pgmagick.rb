require 'formula'

class Pgmagick < Formula
  homepage 'https://pypi.python.org/pypi/pgmagick/'
  url 'https://bitbucket.org/hhatto/pgmagick/get/tip.tar.bz2'

  depends_on 'boost' => ['with-thread-unsafe', 'build-from-source']
  depends_on 'graphicsmagick' => 'with-magick-plus-plus'

  def install
    system 'pip', 'install', '--upgrade', 'pgmagick'
  end
end
