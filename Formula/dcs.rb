# typed: false
# frozen_string_literal: true

# Generated from the published v3.8.1 checksums. DO NOT EDIT.
class Dcs < Formula
  desc "CLI for Dilmune Cloud Services"
  homepage "https://dilmune.com"
  version "3.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.8.1/dcs_darwin_amd64.tar.gz"
      sha256 "0064d2eed4f922f725e7ac8fc123e1041deb5c5eba3168d87b4e9686a8cf3bb8"
      define_method(:install) do
        bin.install "dcs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.8.1/dcs_darwin_arm64.tar.gz"
      sha256 "68cff50f2d0e7e7443418cb48805e8c575ba2a3d09d28d8253dcb12a5083be2c"
      define_method(:install) do
        bin.install "dcs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.8.1/dcs_linux_amd64.tar.gz"
      sha256 "50abc1f60615b08b5b05ce4ae8aff3380d4f428650bfbd8c7776700a9d548d33"
      define_method(:install) do
        bin.install "dcs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Dilmune/dcs-cli/releases/download/v3.8.1/dcs_linux_arm64.tar.gz"
      sha256 "a5b1479933b85f4708a19af819dc299b80761cf3215cb575f3bc16f4aa97db9f"
      define_method(:install) do
        bin.install "dcs"
      end
    end
  end

  test do
    system "#{bin}/dcs", "version", "--json"
  end
end
