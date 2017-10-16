class BdmQt < Formula
  desc "Cross-platform software development for embedded & desktop"
  homepage "https://www.qt.io/"
  url "https://cernbox.cern.ch/index.php/s/BbFptgxo2K565IS/download?path=%2F&files=Qt5.9.1_macos64_clang81.tar.gz"
  sha256 "b7062f1830752bc8d9b04f890d350b0cb03a7848c37f908ae92dd81a4d9eefd5"
  version "5.9.1"
  
  bottle :unneeded
  
  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
