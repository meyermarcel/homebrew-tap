class Icm < Formula
  desc "Validate or generate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  url "https://github.com/meyermarcel/icm/releases/download/1.0.0-beta.3/icm_Darwin_x86_64.tar.gz"
  version "1.0.0-beta.3"
  sha256 "44dcf9f5362b320def5112f15106e73ad879cb3e8d57eb4915c1fed1b3bd4962"

  def install
    bin.install "icm"
    # Install bash completion
    output = Utils.popen_read("#{bin}/icm misc bash-completion")
    (bash_completion/"icm").write output
    
    # Install zsh completion
    output = Utils.popen_read("#{bin}/icm misc zsh-completion")
    (zsh_completion/"_icm").write output
    
    # Install man pages
    man1.install Dir["build/man/man1/*.1"]
  end

  test do
    system "#{bin}/icm --version"
  end
end
