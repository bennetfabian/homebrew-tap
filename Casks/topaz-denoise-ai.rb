cask "topaz-denoise-ai" do
  version "3.6.2"
  sha256 :no_check

  url "https://downloads.topazlabs.com/deploy/TopazDeNoiseAI/latest/TopazDeNoiseAI-Full-Installer.dmg"
  name "Topaz DeNoise AI"
  desc "Topaz' exceptional Al image denoising app"
  homepage "https://www.topazlabs.com/denoise-ai"

  auto_updates true

  app "Topaz DeNoise AI.app"
end
