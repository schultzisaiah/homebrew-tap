cask "touche" do
  version "0.1.0"
  sha256 "8737767f16b150f365730c27d4b2ae51878bd308b75d94a8d700748e37a479ef"

  url "https://github.com/schultzisaiah/touche/releases/download/v#{version}/Touche-#{version}.dmg"
  name "Touché"
  desc "Menu bar alert when a YubiKey or other security key is waiting for a touch"
  homepage "https://github.com/schultzisaiah/touche"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Touché.app"

  uninstall quit: "dev.isaiah.touche"

  zap trash: "~/Library/Preferences/dev.isaiah.touche.plist"
end
