cask "topaz-denoise-ai" do
  version "3.6.2"
  sha256 :no_check

  url "https://downloads.topazlabs.com/deploy/TopazDeNoiseAI/latest/TopazDeNoiseAI-Full-Installer.dmg"
  name "Topaz DeNoise AI"
  desc "Topaz' exceptional Al image denoising app"
  homepage "https://www.topazlabs.com/denoise-ai"

  auto_updates true

  app "Topaz DeNoise AI.app"

  zap trash: [
    "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/TopazDeNoiseAI.lrtemplate",
    "~/Library/Preferences/com.topazlabs.Topaz DeNoise AI.plist",
    "~/Library/Saved Application State/com.topazlabs.TopazDeNoiseAI.savedState",
    "/Applications/Adobe Photoshop 2022/Plug-ins/TopazDeNoiseAI",
  ]
end
