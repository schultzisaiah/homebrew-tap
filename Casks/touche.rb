cask "touche" do
  version "0.3.0"
  sha256 "394297c01dba0ec3bc974dfecfa83e57eb179fc19da6d4fdf00cfbf97ac8b688"

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
