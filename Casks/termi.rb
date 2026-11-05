cask "termi" do
  version "0.1.1-6"
  sha256 "c2521b0d670e584ade07b68f680786047b548162c178bfb0da1ceac35091a0e9"

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
