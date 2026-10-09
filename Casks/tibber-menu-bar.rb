cask "tibber-menu-bar" do
  version "0.2.0"
  sha256 "619dff0d5aa4b3de5ee2cad736e11805bbe4ba48991c99596f14fd797dec04db"

  url "https://github.com/robinnewstory/tibber-menu-bar/releases/download/v#{version}/Tibber-Menu-Bar.zip"
  name "Tibber Menu Bar"
  desc "Current Tibber electricity price in the menu bar, with a chart and live power"
  homepage "https://robinnewstory.github.io/tibber-menu-bar/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  auto_updates true

  app "Tibber Menu Bar.app"

  zap trash: [
    "~/Library/Containers/nl.newstory.tibbermenubar",
    "~/Library/Preferences/nl.newstory.tibbermenubar.plist",
  ]
end
