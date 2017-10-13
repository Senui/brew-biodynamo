class BdmParaview < Formula
  desc "HPC Visualization Software"
  homepage "https://gitlab.kitware.com/paraview/paraview"
  url "https://cernbox.cern.ch/index.php/s/tUOz6ctoEFU3cdB/download"
  sha256 "879f714dd9d41b2ce061019d3baa2d5ddc378ed486cd1cd0bc75841e6fede549"
  version "5.4.1"
  
  bottle :unneeded

  def install
    ohai "TODO: COPY PARAVIEW TO CORRECT DIRECTORY"
  end

  test do
    system "false"
  end
end
