class Biodynamo < Formula
  desc "Biological Dynamic Modeler"
  homepage "https://github.com/Senui/biodynamo"
  url "https://cernbox.cern.ch/index.php/s/KBdHNIYVTDzjNNn/download?path=%2F&files=biodynamo-v1.0.0.tar.gz"
  sha256 "879f714dd9d41b2ce061019d3baa2d5ddc378ed486cd1cd0bc75841e6fede549"

  bottle :unneeded
  
  depends_on "Senui/biodynamo/bdm_root" => :build
  depends_on "Senui/biodynamo/bdm_paraview => :recommended

  def install
    ohai "TODO: COPY BIODYNAMO FILES TO SPECIFIED PATH"
  end

  test do
    system "false"
  end
end
