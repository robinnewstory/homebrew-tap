cask "tibber-menu-bar" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/robinnewstory/tibber-menu-bar/releases/download/v#{version}/Tibber-Menu-Bar.zip"
  name "Tibber Menu Bar"
  desc "Current Tibber electricity price in the menu bar, with a chart and live power"
  homepage "https://robinnewstory.github.io/tibber-menu-bar/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Tibber Menu Bar.app"

  zap trash: [
    "~/Library/Containers/nl.newstory.tibbermenubar",
    "~/Library/Preferences/nl.newstory.tibbermenubar.plist",
  ]
end
