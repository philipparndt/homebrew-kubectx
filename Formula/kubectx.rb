# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubectx < Formula
  desc "Command line tool for managing Kubernetes contexts"
  homepage "https://github.com/philipparndt/kubectx"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/philipparndt/kubectx/releases/download/0.1.0/kubectx_darwin_x86_64.tar.gz"
      sha256 "5dd4340e8eb94c5b5f3e4cb1e1e6c079b3250779c0dbec05e7e500baef7d9801"

      def install
        bin.install "kubectx"
      end
    end
    on_arm do
      url "https://github.com/philipparndt/kubectx/releases/download/0.1.0/kubectx_darwin_arm64.tar.gz"
      sha256 "614063ddd413f64067b8f8b5abbf51d112bd925d3eecf47f2b85f2f2b9aad32b"

      def install
        bin.install "kubectx"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/philipparndt/kubectx/releases/download/0.1.0/kubectx_linux_x86_64.tar.gz"
        sha256 "7a6c824a1f779957be58ccc32395014476e2fbe5142b0cd488b64d013694c803"

        def install
          bin.install "kubectx"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/philipparndt/kubectx/releases/download/0.1.0/kubectx_linux_arm64.tar.gz"
        sha256 "40e9cbbdbbbf2af281bda334e209b869b5c1ceb4d870468c0138a2e59d374b40"

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
