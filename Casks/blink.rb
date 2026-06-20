cask "blink" do
  arch arm: "aarch64", intel: "x64"

  # Replace with your actual application version schema 
  version "0.1.0"
  sha256 :no_check # Set explicit SHA-256 string hashes here to secure automated production releases

  # Points back to the central static download path assets hosted on your servers/releases
  url "https://blink.digitwhale.com/downloads/blink-#{arch}.dmg"
  name "Blink Desktop"
  desc "Local operational AI workspace environment"
  homepage "https://blink.digitwhale.com"

  app "Blink.app"

  zap trash: [
    "~/Library/Application Support/Blink",
    "~/Library/Preferences/com.digitwhale.blink.plist",
    "~/Library/Saved Application State/com.digitwhale.blink.savedState",
  ]
end
