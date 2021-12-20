class RedisCli < Formula
  desc "Install the redis-cli only."
  homepage "https://github.com/aoki/homebrew-redis-cli"
  version "6.0.5"
  sha256 "f7ded6c27d48c20bc78e797046c79b6bc411121f0c2d7eead9fea50d6b0b6290"
  url "https://github.com/antirez/redis/archive/#{version}.tar.gz"

  def install
    system "make redis-cli BUILD_TLS=yes"
    bin.install "./src/redis-cli"
  end

  test do
    system "#{bin}/redis-cli"
  end
end
