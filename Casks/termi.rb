cask "termi" do
  version "0.1.1-12"
  sha256 "c6ff815731473f208599ec51bd66570e2001e3d1643b09830305bd565083b363"

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
