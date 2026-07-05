cask "blink" do
  version "0.1.0"

  on_arm do
    url "https://apps-verity-drive.ckugq3.easypanel.host/blink/uploads/blink/712104b1-57d8-4a61-9d31-708795130339-blink-aarch64.dmg"
    sha256 "76f8f45bcfefca93d8337599926f26e40c93793004be8e261d4f595e10ae458c"
  end
  on_intel do
    url "https://apps-verity-drive.ckugq3.easypanel.host/blink/uploads/blink/14327468-23a6-45b7-bca8-61924c9d56ea-blink-x64.dmg"
    sha256 "09194b1930a190b94d842b133ade0b62df6df16fc37842a60e5c59f0022b2c46"
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
