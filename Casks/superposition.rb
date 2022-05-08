cask "superposition" do
  version "1.2.1"
  sha256 :no_check

  url "https://github.com/firstversionist/superposition/releases/download/v#{version}/Superposition-#{version}.dmg",
      verified: "github.com/firstversionist/superposition/"
  name "Superposition"
  desc "Extract design tokens from a web page"
  homepage "https://superposition.design/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Superposition.app"

  zap trash: [
    "~/Library/Preferences/com.firstversionist.superposition.plist",
    "~/Library/Application Support/Superposition",
    "~/Library/Saved Application State/com.firstversionist.superposition.savedState",
    "~/Library/Logs/Superposition",
  ]
end
