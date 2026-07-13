cask "blink" do
  version "0.1.0"

  on_arm do
    url "https://apps-verity-drive.ckugq3.easypanel.host/blink/uploads/blink/e434ed2b-9306-4734-966c-62a7f3006c2a-blink-aarch64.dmg"
    sha256 "db3749db4ebe9948710b9839b373b0ae5db9e939ece1a58c4a7b4c1dfff85b9f"
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
