require "formula"

class Tmuxide < Formula
  homepage 'https://github.com/frankjmattia/tmuxide'
  url 'https://frankjmattia.github.io/tmuxide/tmuxide-0.0.3.f.tar.gz'
  sha1 '429151d3f18fe04fd0b5520b2b2f674af6203d2c'

  depends_on 'gnu-getopt'

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system './configure', '--disable-debug',
                          '--disable-dependency-tracking',
                          '--disable-silent-rules',
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system 'make', 'install' # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test tmuxide`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system 'false'
  end
end
