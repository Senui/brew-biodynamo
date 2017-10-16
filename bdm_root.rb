class BdmRoot < Formula
  desc "Data Analysis Framwork"
  homepage "https://github.com/root-project/root"
  url "https://cernbox.cern.ch/index.php/s/K3ODazpS4PUjrbQ/download"
  sha256 "879f714dd9d41b2ce061019d3baa2d5ddc378ed486cd1cd0bc75841e6fede549"
  version "6.10.11"
  
  bottle :unneeded

  def install
    prefix.install Dir["root/*"]
  end

  test do
    system "false"
  end
end
