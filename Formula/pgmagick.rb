require 'formula'

class Pgmagick < Formula
  homepage 'https://pypi.python.org/pypi/pgmagick/'
  url 'https://bitbucket.org/hhatto/pgmagick/get/ver0.5.8.tar.bz2'
  sha1 'cbb9d00fb1620659f7e99ea2f94282de71470f26'

  depends_on 'python'
  depends_on 'boost' => [:optional, 'with-thread-unsafe', 'build-from-source']
  depends_on 'boost-python'
  depends_on 'graphicsmagick' => 'with-magick-plus-plus'

  def install
    install_dir = "/usr/local"
    system 'python', 'setup.py', 'install', "--prefix=#{install_dir}"
  end
end
