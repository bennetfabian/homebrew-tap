cask "sf-symbols-4" do
  version "4"
  sha256 "054414b12973474a9e0d5e64871bf52e467b3d3767f996412a272323b6383e97"

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{version}.dmg"
  name "SF Symbols"
  desc "Tool that provides consistent, highly configurable symbols for apps"
  homepage "https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/"

  auto_updates true

  livecheck do
    skip "Livecheck disabled"
  end


  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.SFSymbols.plist",
            delete:  "/Applications/SF Symbols.app"

  zap trash: "~/Library/Preferences/com.apple.SFSymbols.plist"
end
