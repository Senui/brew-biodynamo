class BdmParaview < Formula
  desc "HPC Visualization Software"
  homepage "https://gitlab.kitware.com/paraview/paraview"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=paraview-5.4_macos64_clang81.tar.gz"
  sha256 "855d33b83a4e5a5de93bbb3fea5cb0cf552110b8491ec5c368ee8cac23900f11"
  version "5.4.1"
  
  bottle :unneeded
  
  depends_on "Senui/biodynamo/bdm_qt" => :build

  def install
    system "mkdir -p /opt/biodynamo/third_party/paraview"
    system "cp * -R /opt/biodynamo/third_party/paraview"
  end

  test do
    system "false"
  end
end
