require "formula"

class Tmuxide < Formula
  homepage 'https://github.com/frankjmattia/tmuxide'
  url 'https://frankjmattia.github.io/tmuxide/tmuxide-0.0.3.k.tar.gz'
  sha1 'ea249f6aa97fda56380f3fb72495dea82b3cb2c2'

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
