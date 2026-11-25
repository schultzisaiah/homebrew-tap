cask "touche" do
  version "0.2.1"
  sha256 "038f66112b5c0c4eb3eb4feb2cf7bcb9bd087faddc48e324c33ac824a62d432e"

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

  uninstall quit: "heliopolis.p3x972.touche"

  zap trash: [
    "~/Library/Preferences/dev.isaiah.touche.plist",
    "~/Library/Preferences/heliopolis.p3x972.touche.plist",
  ]
end
