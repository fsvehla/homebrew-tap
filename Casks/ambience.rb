cask "ambience" do
  version "0.1.2"
  sha256 "1294d55e68b45add05b21c8553b797ff7cf0161beb869593030498aaca9bb09a"

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
