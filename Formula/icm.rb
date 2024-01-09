# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Icm < Formula
  desc "Generate or validate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  version "3.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meyermarcel/icm/releases/download/3.2.2/icm_Darwin_arm64.tar.gz"
      sha256 "3624af30f1e4cf90a95206a5b3bd0fdcaed7e886efa93c700a0e0b5bbd44ded0"

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
      url "https://github.com/meyermarcel/icm/releases/download/3.2.2/icm_Darwin_x86_64.tar.gz"
      sha256 "c2cafd914ead501d3d3506818ae04231fe92cf2cf9e08dc6d8a8ce805fd11f2d"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/meyermarcel/icm/releases/download/3.2.2/icm_Linux_armv6.tar.gz"
      sha256 "2195ecff6e4ad357608addef8fc7d2e480fcefd498051e583c5b9db9ce46522b"

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
      url "https://github.com/meyermarcel/icm/releases/download/3.2.2/icm_Linux_x86_64.tar.gz"
      sha256 "4709f665e7dcb0b995ff463288ecc84c867d949db1f5ebfc661fe31f1304582d"

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
      url "https://github.com/meyermarcel/icm/releases/download/3.2.2/icm_Linux_arm64.tar.gz"
      sha256 "db23f73d7f0e1ba4bd18b15503db862d86e56ae3d076fd36ff7cc746b3ce59aa"

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
