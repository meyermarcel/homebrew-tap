class Icm < Formula
  desc "Validate or generate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  url "https://github.com/meyermarcel/icm/releases/download/1.0.3/icm_Darwin_x86_64.tar.gz"
  version "1.0.3"
  sha256 "b880f975db3fb760499a7c13ade1bf750191f7ef60b6908db7307888ba745e84"

  def install
    bin.install "icm"
    # Install bash completion
    output = Utils.popen_read("#{bin}/icm misc bash-completion")
    (bash_completion/"icm").write output
    
    # Install zsh completion
    output = Utils.popen_read("#{bin}/icm misc zsh-completion")
    (zsh_completion/"_icm").write output
    
    # man-pages is also defined in Makefile
    man1.install Dir["man-pages/man1/*.1"]
  end

  test do
    system "#{bin}/icm --version"
  end
end
