class Biodynamo < Formula
  desc "Biological Dynamic Modeler"
  homepage "https://github.com/Senui/biodynamo"
  url "https://github.com/Senui/biodynamo/releases/download/v0.0.9/biodynamo-0.1.0.sierra.tar.gz"
  sha256 "87c15599f594e25e093d8b58dabf7396805311aebdd37342fbab79be5a38237f"
  version "0.1.0"

  depends_on "Senui/biodynamo/bdm_root" => :build
  depends_on "cmake" => :build
  depends_on "llvm" => :build
  depends_on "Senui/biodynamo/bdm_paraview" => :recommended

  def install
    (prefix + "bin").install Dir["bin/*"]
    (prefix + "lib").install Dir["lib/*"]
    (prefix + "include").install Dir["include/*"]
    (prefix + "share").install Dir["share/*"]
    (prefix + "cmake").install Dir["cmake/*"]
    (HOMEBREW_PREFIX + "bin").install_symlink Dir[prefix + "bin/*"]
    (HOMEBREW_PREFIX + "lib").install_symlink Dir[prefix + "lib/*"]
    (HOMEBREW_PREFIX + "include").install_symlink Dir[prefix + "include/*"]
    (HOMEBREW_PREFIX + "share").install_symlink Dir[prefix + "share/*"]
  end

  test do
    system "false"
  end
end
