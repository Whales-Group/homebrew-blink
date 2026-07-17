cask "blink" do
  version "0.1.0"

  on_arm do
    url "https://apps-verity-drive.ckugq3.easypanel.host/blink/uploads/blink/33e6aa41-fa0f-4702-b639-0535ded1e992-blink-aarch64.dmg"
    sha256 "c37414e30cc1767610d4a36e195042c872a716f308e188afea55376b467f29bf"
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
