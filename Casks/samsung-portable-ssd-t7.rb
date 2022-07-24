cask "samsung-portable-ssd-t7" do
  version "1.7.4.3"
  sha256 :no_check

  url "https://semiconductor.samsung.com/resources/software-resources/SamsungPortableSSD_Setup_Mac_1.0.zip"
  name "Samsung Portable SSD Software for T7"
  desc "Software for Samsung external storage drives"
  homepage "https://semiconductor.samsung.com/consumer-storage/portable-ssd/t7/"

  pkg "SamsungPortableSSD_Setup_Mac_1.0.pkg"

  uninstall quit:      [
              "com.samsung.portablessd.software",
              "/Applications/SamsungPortableSSD_1.0.app",
            ],
            launchctl: [
              "com.samsung.portablessd.mon",
            ],
            kext:      "com.samsung.portablessd.driver",
            pkgutil:   [
              "com.samsung.portablessd.driverpkg",
              "com.samsung.portablessd.driverXpkg",
              "com.samsung.portablessdplus.softwarepkg",
              "com.samsung.portablessdplusuniversal.softwarepkg",
            ],
            delete:    [
              "/Applications/SamsungPortableSSD_1.0.app",
              "/Library/Extensions/SamsungPortableSSDDriver*.kext",
            ]

  zap trash: [
    "~/Library/Application Support/Portable_SSD",
    "~/Library/LaunchAgents/com.samsung.portablessd.mon.plist",
    "~/Library/Saved Application State/com.samsung.portablessd.*",
  ]
end
