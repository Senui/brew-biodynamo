class Biodynamo < Formula
  desc "Biological Dynamic Modeler"
  homepage "https://github.com/Senui/biodynamo"
  # link to source tarball
  url "https://github.com/Senui/biodynamo/releases/download/v0.0.9/biodynamo-0.0.9.sierra.bottle.tar.gz"
  # shasum of source tarball
  sha256 "0681592fa16a7abd89416dca35e7721ccf59d70f45b2df13c80f8a1e17af20ef"

#   bottle do
#     # url to pre-built binary (a.k.a. "keg")
#     root_url "https://github.com/Senui/biodynamo/releases/download/v0.0.9"
#     # shasum of keg with reference to OS codename
#     sha256 "0681592fa16a7abd89416dca35e7721ccf59d70f45b2df13c80f8a1e17af20ef" => :sierra
#   end
  
  depends_on "Senui/biodynamo/bdm_root" => :build
  depends_on "Senui/biodynamo/bdm_paraview" => :recommended

  # if the bottle for some reason fails, we build from source
  def install
    prefix.install Dir["0.0.9/*"]
  end

  test do
    system "#{bin}/runBiodynamoTests"
  end
end
