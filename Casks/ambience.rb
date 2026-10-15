cask "ambience" do
  version "0.1.5"
  sha256 "39190b85f30b33f60f0de802c9447f5efd14987e909ce72bf0d6960886f58454"

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
