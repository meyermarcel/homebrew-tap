# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Icm < Formula
  desc "Generate or validate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  version "3.2.8"

  on_macos do
    on_intel do
      url "https://github.com/meyermarcel/icm/releases/download/3.2.8/icm_Darwin_x86_64.tar.gz"
      sha256 "6efb2ba50309b93e2e20ab5a267738152a2632725b1d24a73db77bcce7329234"

      def install
        bin.install "icm"

        # Install bash completion
        bash_output = Utils.popen_read("#{bin}/icm completion bash")
        (bash_completion/"icm").write bash_output

        # Install zsh completion
        zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
        (zsh_completion/"_icm").write zsh_output

        # Install fish completion
        fish_output = Utils.popen_read("#{bin}/icm completion fish")
        (fish_completion/"icm.fish").write fish_output

        # man-pages is also defined in Makefile
        man1.install Dir["docs/man-pages/man1/*.1"]
      end
    end
    on_arm do
      url "https://github.com/meyermarcel/icm/releases/download/3.2.8/icm_Darwin_arm64.tar.gz"
      sha256 "10120e4248222a17b63216ecec5ae8d76d8865f21a8ccd399b3629ff433f1bf0"

      def install
        bin.install "icm"

        # Install bash completion
        bash_output = Utils.popen_read("#{bin}/icm completion bash")
        (bash_completion/"icm").write bash_output

        # Install zsh completion
        zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
        (zsh_completion/"_icm").write zsh_output

        # Install fish completion
        fish_output = Utils.popen_read("#{bin}/icm completion fish")
        (fish_completion/"icm.fish").write fish_output

        # man-pages is also defined in Makefile
        man1.install Dir["docs/man-pages/man1/*.1"]
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/meyermarcel/icm/releases/download/3.2.8/icm_Linux_x86_64.tar.gz"
        sha256 "298fa2576ccd460fa131706cb3a12382a41a03bba781005863d5112151e9c6a6"

        def install
          bin.install "icm"

          # Install bash completion
          bash_output = Utils.popen_read("#{bin}/icm completion bash")
          (bash_completion/"icm").write bash_output

          # Install zsh completion
          zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
          (zsh_completion/"_icm").write zsh_output

          # Install fish completion
          fish_output = Utils.popen_read("#{bin}/icm completion fish")
          (fish_completion/"icm.fish").write fish_output

          # man-pages is also defined in Makefile
          man1.install Dir["docs/man-pages/man1/*.1"]
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/meyermarcel/icm/releases/download/3.2.8/icm_Linux_armv6.tar.gz"
        sha256 "d59816dea84833e71f886d8376f74752bea08ae14f74609b852ad5d7635837ec"

        def install
          bin.install "icm"

          # Install bash completion
          bash_output = Utils.popen_read("#{bin}/icm completion bash")
          (bash_completion/"icm").write bash_output

          # Install zsh completion
          zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
          (zsh_completion/"_icm").write zsh_output

          # Install fish completion
          fish_output = Utils.popen_read("#{bin}/icm completion fish")
          (fish_completion/"icm.fish").write fish_output

          # man-pages is also defined in Makefile
          man1.install Dir["docs/man-pages/man1/*.1"]
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/meyermarcel/icm/releases/download/3.2.8/icm_Linux_arm64.tar.gz"
        sha256 "f4b1070a89e9149d812c713f0fe525e36bdab80427800d74a61be1f55fd0c37f"

        def install
          bin.install "icm"

          # Install bash completion
          bash_output = Utils.popen_read("#{bin}/icm completion bash")
          (bash_completion/"icm").write bash_output

          # Install zsh completion
          zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
          (zsh_completion/"_icm").write zsh_output

          # Install fish completion
          fish_output = Utils.popen_read("#{bin}/icm completion fish")
          (fish_completion/"icm.fish").write fish_output

          # man-pages is also defined in Makefile
          man1.install Dir["docs/man-pages/man1/*.1"]
        end
      end
    end
  end

  test do
    system "#{bin}/icm --version"
  end
end
