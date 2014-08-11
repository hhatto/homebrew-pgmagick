require 'formula'

class Pgmagick < Formula
  homepage 'https://pypi.python.org/pypi/pgmagick/'
  url 'https://bitbucket.org/hhatto/pgmagick/get/ver0.5.8.tar.bz2'
  sha1 'e99bf5f7b75a8ec903d5dace86b5b91fc2bcca06'

  depends_on 'python'
  depends_on 'boost' => [:optional, 'with-thread-unsafe', 'build-from-source', '--with-python']
  depends_on 'graphicsmagick' => 'with-magick-plus-plus'

  def install
    install_dir = "/usr/local"
    system 'python', 'setup.py', 'install', "--prefix=#{install_dir}"
  end
end
