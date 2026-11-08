cask "markwise" do
  version "1.0.0"
  sha256 "d36cfe776028fa1bd3f64340ccb17f8a4af54178437e61b02846d11a7e63bbc3"

  url "https://github.com/reaktif-io/markwise-mac/releases/download/v#{version}/Markwise-#{version}.zip"
  name "Markwise"
  desc "Search, save and ask your Markwise library from the menu bar"
  homepage "https://markwise.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Markwise.app"

  uninstall quit:       "org.reaktif.markwise.mac",
            login_item: "Markwise"

  zap trash: [
    "~/Library/Application Support/Markwise",
    "~/Library/Caches/org.reaktif.markwise.mac",
    "~/Library/Containers/org.reaktif.markwise.mac",
    "~/Library/Preferences/org.reaktif.markwise.mac.plist",
  ]
end
