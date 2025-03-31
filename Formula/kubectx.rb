# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubectx < Formula
  desc "Command-line tool for managing Kubernetes contexts"
  homepage "https://github.com/philipparndt/kubectx"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/philipparndt/kubectx/releases/download/0.2.2/kubectx_darwin_x86_64.tar.gz"
      sha256 "97308a921918790ccebda5ec8cae6dc9e01768dafad21d4de1fb89e9e9fbdc19"

      def install
        bin.install "kubectx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/philipparndt/kubectx/releases/download/0.2.2/kubectx_darwin_arm64.tar.gz"
      sha256 "8a025a978f5639cb753c9837b30024024094ff83da8872b98bab7e398d4235a7"

      def install
        bin.install "kubectx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/philipparndt/kubectx/releases/download/0.2.2/kubectx_linux_x86_64.tar.gz"
        sha256 "c1c477ce9bd20f9b9a6c2bea8811e0cd47bafd54cd53c0bcd1bbfcf24ad34e90"

        def install
          bin.install "kubectx"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/philipparndt/kubectx/releases/download/0.2.2/kubectx_linux_arm64.tar.gz"
        sha256 "3b7658120d0ed121e0b329e706aa1599ed44dbb12eccf390f2eca4e3f8797cbb"

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
