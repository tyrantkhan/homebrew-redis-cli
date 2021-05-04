class RedisCli < Formula
  desc "Install the redis-cli only."
  homepage "https://github.com/aoki/homebrew-redis-cli"
  version "6.0.5"
  sha256 "e5aaf79ecea4cac64a838d4d2b597a5ecc19e50d2fcdf233295053fe12a9349d"
  url "https://github.com/antirez/redis/archive/#{version}.tar.gz"

  def install
    system "make redis-cli"
    bin.install "./src/redis-cli"
  end

  test do
    system "#{bin}/redis-cli"
  end
end
