class Icm < Formula
  desc "Validate or generate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  url "https://github.com/meyermarcel/icm/releases/download/1.0.0-beta.5/icm_Darwin_x86_64.tar.gz"
  version "1.0.0-beta.5"
  sha256 "717dd19a35f2bc0fc2ddd722b7a71ef55fcc0b7b07594948ecacb48739932523"

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
