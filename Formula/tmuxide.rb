require "formula"

class Tmuxide < Formula
  homepage 'https://github.com/frankjmattia/tmuxide'
  url 'https://frankjmattia.github.io/tmuxide/tmuxide-0.0.3.j.tar.gz'
  sha1 '5e51b66013a4afd60c362ce448b7e976cf7d6d6e'

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
