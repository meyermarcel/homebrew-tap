class Icm < Formula
  desc "Validate or generate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  url "https://github.com/meyermarcel/icm/releases/download/1.0.5/icm_Darwin_x86_64.tar.gz"
  version "1.0.5"
  sha256 "d6456a10f2ba42321f6e23e3694c4affd897dfd66deda182b85c130c0cf760f6"

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
