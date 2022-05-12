cask "topaz-gigapixel-ai" do
  version "6.1.0"
  sha256 :no_check

  url "https://downloads.topazlabs.com/deploy/TopazGigapixelAI/latest/TopazGigapixelAI-Full-Installer.dmg"
  name "Topaz Gigapixel AI"
  desc "Topaz' exceptional Al image upscaler app"
  homepage "https://www.topazlabs.com/gigapixel-ai"

  auto_updates true

  app "Topaz Gigapixel AI.app"

  zap trash: [
    "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/TopazGigapixelAI.lrtemplate",
    "~/Library/Preferences/com.topazlabs.Topaz Gigapixel AI.plist",
    "~/Library/Saved Application State/com.topazlabs.TopazGigapixelAI.savedState",
    "/Applications/Adobe Photoshop 2022/Plug-ins/TopazGigapixelAI",
  ]
end
