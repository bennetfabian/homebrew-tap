cask "lunacy" do
  version "8.4.0"
  sha256 :no_check

  url "https://lun-static.s3.us-west-000.backblazeb2.com/setup/Lunacy.dmg",
      verified: "lun-static.s3.us-west-000.backblazeb2.com"
  name "Lunacy"
  desc "Free design software that keeps your flow with AI tools and built-in graphics"
  homepage "https://icons8.com/lunacy"

  app "Lunacy.app"
end
