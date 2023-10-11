cask "narrative-select" do
  version "1.0.6"
  sha256 "9b66c2a206e72e021ac1e46bd696d088515a6b51dca80b0b94f34edf248e6ef6"

  url "https://updates.narrative.so/select-installer/#{version}/Install%20Narrative%20Select.zip"
  name "Narrative Select"
  desc "Cull photos fast with Narrative Select"
  homepage "https://narrative.so/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  installer manual: "Install Narrative Select.app"

  uninstall delete: "/Applications/Narrative Select.app"

  zap trash: [
    "~/Library/Application Support/com.narrative.select",
    "~/Library/Application Support/CrashReporter/Narrative Select*",
    "~/Library/Application Support/Caches/com.narrative.select-updater",
    "~/Library/Saved Application State/so.narrative.NarrativeSelectInstaller.savedState",
    "~/Library/Saved Application State/com.narrative.select.savedState",
    "~/Library/Preferences/so.narrative.NarrativeSelectInstaller.plist",
    "~/Library/Preferences/com.narrative.select.plist",
    "~/Library/HTTPStorages/so.narrative.NarrativeSelectInstaller.binarycookies",
    "~/Library/HTTPStorages/so.narrative.NarrativeSelectInstaller",
    "~/Library/Logs/com.narrative.select",
    "~/Library/Logs/Narrative Select",
    "~/Library/Logs/Install Narrative Select",
  ]
end
