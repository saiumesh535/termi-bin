cask "termi" do
  version "0.1.1-15"
  sha256 "73291e12b131378a5361f747a83e9aaae37e340f6c38280d20db807a729c5911"

  url "https://github.com/saiumesh535/termi-bin/releases/download/v#{version}/Termi.zip"
  name "Termi"
  desc "Native autocomplete for Mac terminals and Zsh"
  homepage "https://termi.saiumesh.dev/"

  livecheck do
    url "https://github.com/saiumesh535/termi-bin/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+(?:-\d+)?)["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Termi.app"

  zap trash: [
    "~/Library/Application Support/Termi",
    "~/Library/Caches/com.termi.app",
    "~/Library/HTTPStorages/com.termi.app",
    "~/Library/Preferences/com.termi.app.plist",
  ]
end
