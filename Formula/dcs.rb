# typed: false
# frozen_string_literal: true

# Generated from the published v3.10.0 checksums. DO NOT EDIT.
class Dcs < Formula
  desc "CLI for Dilmune Cloud Services"
  homepage "https://dilmune.com"
  version "3.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.10.0/dcs_darwin_amd64.tar.gz"
      sha256 "d52f035927461d3ca237f6b6c9d043161fe597ada6b0c84d1d7e04dc1424f02e"
      define_method(:install) do
        bin.install "dcs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.10.0/dcs_darwin_arm64.tar.gz"
      sha256 "e60556f358afe7daef13e6369231fa779ba83ff2e0f868063fff7e08408ffcb4"
      define_method(:install) do
        bin.install "dcs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.10.0/dcs_linux_amd64.tar.gz"
      sha256 "8bce1453d1b3c2def3284cbaac07a9c367727c20a0fa004ee960a10babf24ce7"
      define_method(:install) do
        bin.install "dcs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.10.0/dcs_linux_arm64.tar.gz"
      sha256 "47f382d6f2c1b8807fcf8840b9ba7665a7fdd8f0ba6f67e412c632c8849a269e"
      define_method(:install) do
        bin.install "dcs"
      end
    end
  end

  test do
    system "#{bin}/dcs", "version", "--json"
  end
end
