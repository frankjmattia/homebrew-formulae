require "formula"

class Tmuxide < Formula
  homepage 'https://github.com/frankjmattia/tmuxide'
  url 'https://frankjmattia.github.io/tmuxide/tmuxide-0.0.4.tar.gz'
  sha1 '131c40e4709377d6ec5af409940dd489f0fcbe44'

  depends_on 'gnu-getopt'

  def install
    system './configure', '--disable-silent-rules',
                          "--prefix=#{prefix}"

    system 'make', 'install'

    bin.install_symlink "#{libexec}/tmuxide"
    bin.install_symlink "#{libexec}/log-pane"
  end

  test do
    system 'tmuxide --version'
  end
end
