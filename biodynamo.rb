class Biodynamo < Formula
  desc "Biological Dynamic Modeler"
  homepage "https://github.com/Senui/biodynamo"
  url "https://github.com/Senui/biodynamo/archive/v0.0.9.tar.gz"
  sha256 "f057d60d1970d2e8e3973d77d5b7fd8ef1d9ae93d68b7d57a8f9df30e992bbbc"

  bottle do
    root_url "https://github.com/Senui/biodynamo/releases/download/v0.0.9"
    sha256 "197748a06fd653af7df8afaa5546257a879d350d4e0cb02b5d07f6fabee2b5f4"
  end
  
  depends_on "Senui/biodynamo/bdm_root" => :build
  depends_on "Senui/biodynamo/bdm_paraview" => :recommended

  def install
    mkdir "build_bdm" do
      system "cmake", ".."
      system "make", "install"
    end
  end

  test do
    system "#{bin}/runBiodynamoTests"
  end
end
