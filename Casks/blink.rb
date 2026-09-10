cask "blink" do
  version "0.1.0"

  on_arm do
    url "https://files.digitwhale.com/blink/uploads/blink/c8954d33-28e9-41a1-8deb-b3e62d864b56-blink-aarch64.dmg"
    sha256 "fa0980e9ea2311a677e2694c9daa618c839ea0c7bee7c25d569d66e1efd5be61"
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
