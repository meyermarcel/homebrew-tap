# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Icm < Formula
  desc "Generate or validate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  version "3.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meyermarcel/icm/releases/download/3.2.4/icm_Darwin_arm64.tar.gz"
      sha256 "2723e7c69b2a21a07db11ea1e7673d06fdaa5364ec04716f26c046ddb8b6fa39"

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
    if Hardware::CPU.intel?
      url "https://github.com/meyermarcel/icm/releases/download/3.2.4/icm_Darwin_x86_64.tar.gz"
      sha256 "22975a4bdbfad2e08d05333568fb3c6fff185b9cc93bbc8593295fbd5bb27a1c"

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
    if Hardware::CPU.intel?
      url "https://github.com/meyermarcel/icm/releases/download/3.2.4/icm_Linux_x86_64.tar.gz"
      sha256 "8904f40dde27bd058cfdd138b8299974bd0e57afcd90437d5160031793318c8d"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meyermarcel/icm/releases/download/3.2.4/icm_Linux_arm64.tar.gz"
      sha256 "4c7dfe2e068290adb8ad49df75256c64c9c982ed5a0a511c823d66bad7d68476"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/meyermarcel/icm/releases/download/3.2.4/icm_Linux_armv6.tar.gz"
      sha256 "bc8415c28eec27e4207dc3c13137d08cdd5398e57516e4ab5466ab75be5f24bc"

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

  test do
    system "#{bin}/icm --version"
  end
end
