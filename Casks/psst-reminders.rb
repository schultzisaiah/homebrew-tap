cask "psst-reminders" do
  version "0.2.0"
  sha256 "18c372c6c7bf348f90b9034eac500983628edef1718b7126ccf7508e6961d299"

  url "https://github.com/schultzisaiah/psst-macos/releases/download/v#{version}/Psst-#{version}.dmg"
  name "Psst"
  desc "Meeting reminders that are hard to miss"
  homepage "https://github.com/schultzisaiah/psst-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Psst.app"

  zap trash: [
    "~/Library/Caches/dev.isaiah.psst",
    "~/Library/Caches/heliopolis.p3x972.psst",
    "~/Library/HTTPStorages/dev.isaiah.psst",
    "~/Library/HTTPStorages/heliopolis.p3x972.psst",
    "~/Library/Preferences/dev.isaiah.psst.plist",
    "~/Library/Preferences/heliopolis.p3x972.psst.plist",
  ]
end
