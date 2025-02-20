# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubectx < Formula
  desc "Command-line tool for managing Kubernetes contexts"
  homepage "https://github.com/philipparndt/kubectx"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/philipparndt/kubectx/releases/download/0.1.10/kubectx_darwin_x86_64.tar.gz"
      sha256 "840f6581602b37e8fd2b9d070cf711bfd11c6d6b3ae981088452665cb95ce4bd"

      def install
        bin.install "kubectx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/philipparndt/kubectx/releases/download/0.1.10/kubectx_darwin_arm64.tar.gz"
      sha256 "dc1387d372346672412131656459d72e40ae9835302236d0f21eb4b367a090e0"

      def install
        bin.install "kubectx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/philipparndt/kubectx/releases/download/0.1.10/kubectx_linux_x86_64.tar.gz"
        sha256 "de705fd429b587e7764c403548855048db6a657b3e6b022df46f10b72f1de870"

        def install
          bin.install "kubectx"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/philipparndt/kubectx/releases/download/0.1.10/kubectx_linux_arm64.tar.gz"
        sha256 "d34d54936881182874805f9c7420fe36631644751aceba5e19b01b9257737d8a"

        def install
          bin.install "kubectx"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Run using kubectx
    EOS
  end
end
