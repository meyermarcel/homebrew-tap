# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Icm < Formula
  desc "Generate or validate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  version "3.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/meyermarcel/icm/releases/download/3.1.2/icm_Darwin_x86_64.tar.gz"
      sha256 "ab4c1ebee1b07169a2d334442cba5f2a9a56cf1dfda231a4bc1962cf3f235700"

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
    if Hardware::CPU.arm?
      url "https://github.com/meyermarcel/icm/releases/download/3.1.2/icm_Darwin_arm64.tar.gz"
      sha256 "3d4bb2a459b65bb8d46d73c203af4ffc475c5c46b39a46f910b3fa49d066ba64"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meyermarcel/icm/releases/download/3.1.2/icm_Linux_arm64.tar.gz"
      sha256 "39f79b752cdd4c5025d08d54b98f3c612e0a64575efae675877528dff1fc9b45"

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
      url "https://github.com/meyermarcel/icm/releases/download/3.1.2/icm_Linux_armv6.tar.gz"
      sha256 "c9110aa852e793e54468f35c4088e9243418ba148d538189c6a0ad3c7a0de679"

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
      url "https://github.com/meyermarcel/icm/releases/download/3.1.2/icm_Linux_x86_64.tar.gz"
      sha256 "2579bf84778bb28c36d76fa218865dcc09c0351310617d95fe40671bfde04ffa"

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
