# typed: false
# frozen_string_literal: true

# Generated from the published v3.8.3 checksums. DO NOT EDIT.
class Dcs < Formula
  desc "CLI for Dilmune Cloud Services"
  homepage "https://dilmune.com"
  version "3.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.8.3/dcs_darwin_amd64.tar.gz"
      sha256 "64ddbaa41e0f98c6e7f9e57e331063ec395768c01a008eabdfc91994d0a44f77"
      define_method(:install) do
        bin.install "dcs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.8.3/dcs_darwin_arm64.tar.gz"
      sha256 "a277a32882387d61052db2baf7c3c5ea0e7829003c40fe0313f86996b5ffa3bd"
      define_method(:install) do
        bin.install "dcs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.8.3/dcs_linux_amd64.tar.gz"
      sha256 "289c0f8a784bbc1f4d4d52bbab70a7d9878f161f1f70c35afbe8092b9e54a893"
      define_method(:install) do
        bin.install "dcs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.8.3/dcs_linux_arm64.tar.gz"
      sha256 "ccb7824523e1252ce71c97169de0ce39b219999b8b13fbb5c4a1eb6c4f6e7611"
      define_method(:install) do
        bin.install "dcs"
      end
    end
  end

  test do
    system "#{bin}/dcs", "version", "--json"
  end
end
