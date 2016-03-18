# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class RedisCli < Formula
  desc "Install the redis-cli only."
  homepage "https://github.com/ringohub/homebrew-redis-cli"
  url "https://github.com/antirez/redis/archive/3.0.7.tar.gz"
  version "3.0.7"
  sha256 "b2a791c4ea3bb7268795c45c6321ea5abcc24457178373e6a6e3be6372737f23"

  def install
    system "make install redis-cli"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test redis-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
