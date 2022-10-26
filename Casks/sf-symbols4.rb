cask "sf-symbols4" do
  version "4"
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{version}.dmg"
  name "SF Symbols"
  desc "Tool that provides consistent, highly configurable symbols for apps"
  homepage "https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/"

  livecheck do
    skip "Livecheck disabled"
  end

  auto_updates true

  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.SFSymbols.plist",
            delete:  "/Applications/SF Symbols.app"

  zap trash: "~/Library/Preferences/com.apple.SFSymbols.plist"
end
