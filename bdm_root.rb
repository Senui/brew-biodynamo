class BdmRoot < Formula
  desc "Data Analysis Framwork"
  homepage "https://github.com/root-project/root"
  url "https://cernbox.cern.ch/index.php/s/ZW43ZpIIZBPI7xe/download"
  sha256 "459861ba96bc89d193365a2dd4ccf994c77842d19becbe8c1d9667577d807bd1"
  version "6.10.11"
  
  bottle :unneeded

  def install
    prefix.install Dir["root/*"]
  end

  test do
    system "false"
  end
end
