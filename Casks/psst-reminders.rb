cask "psst-reminders" do
  version "0.4.0"
  sha256 "93c0e3b93ef6508c2cf7ae5e82fb774b11a3b434510535c71f98d883f9cba529"

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
