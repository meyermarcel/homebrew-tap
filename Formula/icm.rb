class Icm < Formula
  desc "Validate or generate intermodal container markings."
  homepage "https://github.com/meyermarcel/icm"
  url "https://github.com/meyermarcel/icm/releases/download/v0.0.0/icm_Darwin_x86_64.tar.gz"
  version "SNAPSHOT-f681258a36e811bb7ec227a7880a4089a34f83e2"
  sha256 "ec0c7e20d240512127457506c69247670dfe2ef0d66a66a18c9bbac4dd1769c1"

  def install
    bin.install "icm"
  end

  test do
    system "#{bin}/icm --version"
  end
end
