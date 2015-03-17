require 'formula'

class Pgmagick < Formula
  homepage 'https://pypi.python.org/pypi/pgmagick/'
  url 'https://bitbucket.org/hhatto/pgmagick/get/ver0.5.10.tar.bz2'
  sha1 'c70c6559838f0a92fdedd6a86540bebf5d5b5992'

  depends_on 'python'
  depends_on 'boost' => [:optional, 'with-thread-unsafe', 'build-from-source']
  depends_on 'boost-python'
  depends_on 'graphicsmagick' => 'with-magick-plus-plus'

  def install
    install_dir = "/usr/local"
    system 'python', 'setup.py', 'install', "--prefix=#{install_dir}"
  end
end
