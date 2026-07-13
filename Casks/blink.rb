cask "blink" do
  version "0.1.0"

  on_arm do
    url "https://apps-verity-drive.ckugq3.easypanel.host/blink/uploads/blink/59ec2334-69a6-403f-89ad-d7d513f8a4d1-blink-aarch64.dmg.zip"
    sha256 "819266710cb595d2f988383298099460b6bc39ed131ff3aaebef153a48d7d0b7"
  end
  on_intel do
    url "https://apps-verity-drive.ckugq3.easypanel.host/blink/uploads/blink/52c160de-c562-4098-be1e-45c3b06e3bbf-blink-setup.exe"
    sha256 "aee00f16bdb1bbbd9c97a783be1c97eaa21dc32458a88d71e34ce8c10fffea6a"
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
