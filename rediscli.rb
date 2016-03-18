# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class RedisCli < Formula
  desc "Install the redis-cli only."
  homepage "https://github.com/ringohub/homebrew-rediscli"
  url "https://github.com/antirez/redis/archive/3.0.7.tar.gz"
  version "3.0.7"
  sha256 "b2a791c4ea3bb7268795c45c6321ea5abcc24457178373e6a6e3be6372737f23"

  def install
    system "make redis-cli"
  end

  test do
    #system "false"
  end
end
