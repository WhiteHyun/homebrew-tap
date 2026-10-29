cask "quotari" do
  version "0.5.3"
  sha256 "70b0256946c81722c2cad9925619477c5f5df8858cf71e7e1f6f311882968d9b"

  url "https://github.com/WhiteHyun/Quotari/releases/download/v#{version}/Quotari-#{version}.zip"
  name "Quotari"
  desc "Menu-bar usage, limits, and reset times for AI coding subscriptions"
  homepage "https://github.com/WhiteHyun/Quotari"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Quotari.app"

  zap trash: [
    "~/Library/Application Support/Quotari",
    "~/Library/Caches/com.whitehyun.quotari",
    "~/Library/Caches/Quotari",
    "~/Library/HTTPStorages/com.whitehyun.quotari",
    "~/Library/Preferences/com.whitehyun.quotari.plist",
  ]
end
