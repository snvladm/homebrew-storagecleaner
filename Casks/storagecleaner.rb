cask "storagecleaner" do
  version "1.0.0"
  sha256 "14cfd1d635486afd6eaa07c5a0e7d01cb5db3bebbc6cd9d0e6c41a8be73998ae"

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
