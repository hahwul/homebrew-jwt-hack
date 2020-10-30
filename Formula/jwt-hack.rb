# This file was generated by GoReleaser. DO NOT EDIT.
class JwtHack < Formula
  desc "Hack the JWT(JSON Web Token) / jwt-hack is JWT hacking, security testing utility"
  homepage "https://www.hahwul.com"
  version "1.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hahwul/jwt-hack/releases/download/v1.0.3/jwt-hack_1.0.3_darwin_amd64.tar.gz"
    sha256 "ad644c7990e52f5645c17487d886f9a43c9e03d0672110f9effb2dab92eb15e1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/jwt-hack/releases/download/v1.0.3/jwt-hack_1.0.3_linux_amd64.tar.gz"
      sha256 "0d7c6ace576b08d31daa3a272b44179230d6d1a6e763c89d15d67f42d12a63d3"
    end
  end

  def install
    bin.install "jwt-hack"
  end

  test do
    system "#{bin}/jwt-hack version"
  end
end
