cask "storagecleaner" do
  version "1.0.0"
  sha256 "a77d4646cd72bee416b94c21216b95684153d73b65a64316be71862bb3108009"

  url "https://github.com/snvladm/storagecleaner-releases/releases/download/v#{version}/StorageCleaner-#{version}.dmg"
  name "StorageCleaner"
  desc "Disk cleanup for Mac: caches, app leftovers, large files, duplicates, disk map, startup items"
  homepage "https://github.com/snvladm/storagecleaner-releases"

  depends_on macos: :sonoma

  app "StorageCleaner.app"

  zap trash: [
    "~/Library/Application Support/StorageCleaner",
    "~/Library/Preferences/app.storagecleaner.mac.plist",
  ]
end
