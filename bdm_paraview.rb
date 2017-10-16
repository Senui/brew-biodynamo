class BdmParaview < Formula
  desc "HPC Visualization Software"
  homepage "https://gitlab.kitware.com/paraview/paraview"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=paraview-5.4_macos64_clang81.tar.gz"
  sha256 "1156c2bfc2145662b50017d53455200c311c287cc98469e3ec350c8462c3f910"
  version "5.4.1"
  
  bottle :unneeded
  
  depends_on "Senui/biodynamo/bdm_qt" => :build

  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
