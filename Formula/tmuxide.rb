require "formula"

class Tmuxide < Formula
  homepage 'https://github.com/frankjmattia/tmuxide'
  url 'https://frankjmattia.github.io/tmuxide/tmuxide-0.0.3.l.tar.gz'
  sha1 'debafdf77905032a91e796dbf88f642e6d02db60'

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
