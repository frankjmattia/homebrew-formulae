require "formula"

class Tmuxide < Formula
  homepage 'https://github.com/frankjmattia/tmuxide'
  url 'https://frankjmattia.github.io/tmuxide/tmuxide-0.0.5.tar.gz'
  sha1 'abc865052d3af300a0c00aacbd3add7becdba8ff'

  depends_on 'gnu-getopt'

  def install
    system './configure', '--disable-silent-rules',
                          "--prefix=#{prefix}"

    system 'make', 'install'
  end

  test do
    system 'tmuxide --version'
  end
end
