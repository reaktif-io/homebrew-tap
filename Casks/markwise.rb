cask "markwise" do
  version "1.0.1"
  sha256 "35f096c2feb2af4467758e3e04f2abfa496bb2b573b92bd8408222b37d182940"

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
