cask "topaz-sharpen-ai" do
  version "4.1.0"
  sha256 :no_check

  url "https://downloads.topazlabs.com/deploy/TopazSharpenAI/latest/TopazSharpenAI-Full-Installer.dmg"
  name "Topaz Sharpen AI"
  desc "Topaz' exceptional Al image sharpening app"
  homepage "https://www.topazlabs.com/sharpen-ai"

  auto_updates true

  app "Topaz Sharpen AI.app"

  zap trash: [
    "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/TopazSharpenAI.lrtemplate",
    "~/Library/Preferences/com.topazlabs.Topaz Sharpen AI.plist",
    "~/Library/Saved Application State/com.topazlabs.TopazSharpenAI.savedState",
    "/Applications/Adobe Photoshop 2022/Plug-ins/TopazSharpenAI",
  ]
end
