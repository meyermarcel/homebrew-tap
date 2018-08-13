class Icm < Formula
  desc "Validate or generate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  url "https://github.com/meyermarcel/icm/releases/download/1.0.0-beta/icm_Darwin_x86_64.tar.gz"
  version "1.0.0-beta"
  sha256 "39c3fe92b7a0fc615bc4314119f739980711dc22eb99ef5d65324b9c61c6c538"

  def install
    bin.install "icm"
    # Install bash completion
    output = Utils.popen_read("#{bin}/icm completion bash")
    (bash_completion/"icm").write output
    
    # Install zsh completion
    output = Utils.popen_read("#{bin}/icm completion zsh")
    (zsh_completion/"_icm").write output
  end

  test do
    system "#{bin}/icm --version"
  end
end
