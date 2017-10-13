class BioDynaMo < Formula
  desc "Biological Dynamic Modeler"
  homepage "https://github.com/Senui/biodynamo"
  url "https://cernbox.cern.ch/remote.php/webdav/test/biodynamo-v1.0.0.tar.gz"
  sha256 "879f714dd9d41b2ce061019d3baa2d5ddc378ed486cd1cd0bc75841e6fede549"

  bottle :unneeded

  def install
    bin.install "biodynamo"
  end

  test do
    system "#{bin}", "./runBiodynamoTestsMain --gtest_filter=Math*"
  end
end
