cask "blink" do
  version "0.1.0"

  on_arm do
    url "https://files.digitwhale.com/blink/uploads/blink/9aca7891-c2a2-45f5-8523-43dbc51de8f4-blink-aarch64.dmg"
    sha256 "6a472329bc29a0f5629ae228d3b3717741782bc8f7e9595a41dcea830a73202e"
  end
  on_intel do
    url "https://blink.digitwhale.com/downloads/blink-x64.dmg"
    sha256 "b2007d8376432081eebd10ea051e4b917cb9b8be09c2e10be509fc499015fda3"
  end

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
