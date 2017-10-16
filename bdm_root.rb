class BdmRoot < Formula
  desc "Data Analysis Framwork"
  homepage "https://github.com/root-project/root"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=root_v6.11.01_macos64_LLVM-Clang-4.0_263508429d.tar.gz"
  sha256 "8b2b15ede7a25e86f3cca19cba3193a96492b8564111a28db4a0e7ee3fb3a493"
  version "6.11.01"
  
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
