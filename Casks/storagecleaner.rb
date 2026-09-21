cask "storagecleaner" do
  version "1.0.0"
  sha256 "3d7a247c9d7256e9aab2966ea9e52d4419e95e19d0bf81ef7fe25fdd9991d092"

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
