cask "quotari" do
  version "0.4.2"
  sha256 "a73724152a814486e4341fe2da5655fa552da85571065cdb869121b5d48dd412"

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
