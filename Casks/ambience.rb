cask "ambience" do
  version "0.2.0"
  sha256 "a5e5aa34d3ed5c990f44f21c6fcdfbbf17f95b3405d48124be585d733915d130"

  url "https://github.com/fsvehla/bgm-audio/releases/download/v#{version}/Ambience-#{version}-macos.zip"
  name "Ambience"
  desc "Player for long background music and ambience files"
  homepage "https://github.com/fsvehla/bgm-audio"

  livecheck do
    url "https://github.com/fsvehla/bgm-audio/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  # Updates itself with Sparkle; brew upgrade leaves it alone unless --greedy.
  auto_updates true
  depends_on macos: :sonoma

  app "Ambience.app"

  zap trash: [
    "~/Library/Application Support/bgm-audio",
    "~/Library/Caches/at.fsvehla.bgm-audio",
    "~/Library/HTTPStorages/at.fsvehla.bgm-audio",
    "~/Library/HTTPStorages/at.fsvehla.bgm-audio.binarycookies",
    "~/Library/Preferences/at.fsvehla.bgm-audio.plist",
    "~/Library/Saved Application State/at.fsvehla.bgm-audio.savedState",
  ]
end
