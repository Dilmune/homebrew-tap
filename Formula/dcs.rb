# typed: false
# frozen_string_literal: true

# Generated from the published v3.9.0 checksums. DO NOT EDIT.
class Dcs < Formula
  desc "CLI for Dilmune Cloud Services"
  homepage "https://dilmune.com"
  version "3.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.9.0/dcs_darwin_amd64.tar.gz"
      sha256 "ced817875b7b940e875200e310b227e43a9f4a7cbcea6f2835a093ecb8a42b14"
      define_method(:install) do
        bin.install "dcs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.9.0/dcs_darwin_arm64.tar.gz"
      sha256 "97964f1b0d06aa126f88192ea2d2472bf83d78aaa7c9b771ca268524c317175e"
      define_method(:install) do
        bin.install "dcs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.9.0/dcs_linux_amd64.tar.gz"
      sha256 "415ab646ddb952dcde1001c828e8f6a1cd60cc34f3bd0a9cfd056f7a5fe28dae"
      define_method(:install) do
        bin.install "dcs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.9.0/dcs_linux_arm64.tar.gz"
      sha256 "f1677b543c8329140a27f31cec66d43c7d24e517a7fcc42a920a7ba5d18b789e"
      define_method(:install) do
        bin.install "dcs"
      end
    end
  end

  test do
    system "#{bin}/dcs", "version", "--json"
  end
end
