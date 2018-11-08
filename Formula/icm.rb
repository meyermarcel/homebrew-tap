class Icm < Formula
  desc "Validate or generate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  url "https://github.com/meyermarcel/icm/releases/download/1.0.0-beta.2/icm_Darwin_x86_64.tar.gz"
  version "1.0.0-beta.2"
  sha256 "e8def330cf20a3123cfcbf490cb8d4851cfc4e848a9606efa5f211198753fb35"

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