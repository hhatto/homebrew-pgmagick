require 'formula'

class Pgmagick < Formula
  homepage 'https://pypi.python.org/pypi/pgmagick/'
  url 'https://bitbucket.org/hhatto/pgmagick/get/tip.tar.bz2'
  url 'https://bitbucket.org/hhatto/pgmagick/get/ver0.5.7.tar.bz2'
  sha1 '62d00f1d66a6a357327cdd71000fa2d1e93629f7'

  depends_on 'python'
  depends_on 'boost' => [:optional, 'with-thread-unsafe', 'build-from-source']
  depends_on 'graphicsmagick' => 'with-magick-plus-plus'

  def install
    install_path = "#{prefix}/lib/python2.7/site-packages"
    system 'python', 'setup.py', 'install', "--install-dir=#{install_path}"
  end
end
