class RedisCli < Formula
  desc "Install the redis-cli only."
  homepage "https://github.com/aoki/homebrew-redis-cli"
  version "5.0.8"
  sha256 "a1d0c4271f7c6a84e2d03bc52cb087d44cd28602b0bafa470d44da4a1bda5926"
  url "https://github.com/antirez/redis/archive/#{version}.tar.gz"

  def install
    system "make redis-cli"
    bin.install "./src/redis-cli"
  end

  test do
    system "#{bin}/redis-cli"
  end
end
