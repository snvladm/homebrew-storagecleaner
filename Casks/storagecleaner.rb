cask "storagecleaner" do
  version "1.0.0"
  sha256 "4ebdab096e09dd476a4d4407f558c25a8dd66cdb020b40dd1f8304324a26aae7"

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
