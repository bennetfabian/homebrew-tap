cask "samsung-magician" do
  version "8.0.0.900"
  sha256 "6bbe4d60376908c46511d015a948e04f8986d8d506f36cb87c6d023e1fba622d"

  url "https://download.semiconductor.samsung.com/resources/software-resources/Samsung_Magician_installer_Official_#{version}_macOS.zip"
  name "Samsung Magician"
  desc ""
  homepage "https://www.samsung.com/de/ssd/magiciansoftware/"

  pkg "Samsung_Magician_Installer.pkg"
end
