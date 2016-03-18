class RedisCli < Formula
  desc "Install the redis-cli only."
  homepage "https://github.com/ringohub/homebrew-redis-cli"
  version "3.0.7"
  #sha256 "b2a791c4ea3bb7268795c45c6321ea5abcc24457178373e6a6e3be6372737f23"
  url "https://github.com/antirez/redis/archive/#{version}.tar.gz"

  def install
    system "make redis-cli"
    bin.install "./src/redis-cli"
  end

  test do
    system "#{bin}/redis-cli"
  end
end
