cask "open-color-companion" do
  version "1.0.7"
  sha256 "656810aa1dfb77c709f4711e7cab5befeec95e7ba9033a1049eaccb78e376cbc"

  url "http://opencolor.precious-forever.com/open-color-companion-#{version}-osx-x64.zip",
      verified: "opencolor.precious-forever.com"
  name "Open Color Tools"
  desc "Define, exchange and pick colors"
  homepage "http://opencolor.tools/"

  livecheck do
    skip "No version information available"
  end

  app "Open Color Companion.app"

  zap trash: [
    "/Applications/Open Color Companion.app",
    "~/Library/Application Support/Open Color Companion",
    "~/Library/Preferences/tools.opencolor.companion-app.helper.plist",
    "~/Library/Preferences/tools.opencolor.companion-app.plist",
    "~/Library/Saved Application State/tools.opencolor.companion-app.savedState",
  ]
end
