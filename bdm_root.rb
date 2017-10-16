class BdmRoot < Formula
  desc "Data Analysis Framwork"
  homepage "https://github.com/root-project/root"
  url "https://cernbox.cern.ch/index.php/s/ZW43ZpIIZBPI7xe/download"
  sha256 "459861ba96bc89d193365a2dd4ccf994c77842d19becbe8c1d9667577d807bd1"
  version "6.10.11"
  
  bottle :unneeded

  # this will do:
  # tar -zxf root.tar.gz && cd root
  # cp root/* /usr/local/Cellar/bdm_root/#version
  # symlink into /usr/local/[bin | lib | share | include | ..]
  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
