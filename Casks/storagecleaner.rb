cask "storagecleaner" do
  version "1.0.0"
  sha256 "c2c26b3089f7a535722ffe9793750f6df5b3e5494fc5e684b263800077344d84"

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
