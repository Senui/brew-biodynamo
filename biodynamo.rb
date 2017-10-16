class Biodynamo < Formula
  desc "Biological Dynamic Modeler"
  homepage "https://github.com/Senui/biodynamo"
  url "https://github.com/Senui/biodynamo/releases/download/v0.0.9/biodynamo-0.0.9.sierra.bottle.tar.gz"
  sha256 "0681592fa16a7abd89416dca35e7721ccf59d70f45b2df13c80f8a1e17af20ef"

  depends_on "Senui/biodynamo/bdm_root" => :build
  depends_on "Senui/biodynamo/bdm_paraview" => :recommended

  def install
    prefix.install Dir["0.0.9/*"]
    system "export OMP_V=`/usr/local/opt/llvm/bin/llvm-config --version`"
    system "cp /usr/local/opt/llvm/lib/clang/${OMP_V}/include/omp.h /usr/local/Cellar/biodynamo"
  end

  test do
    system "false"
  end
end
