cask "quotari" do
  version "0.5.2"
  sha256 "3bbc45aa8f4fa2d5a1c36e5804c0b7bab67e1179e9d85bb9d66218f0ff737190"

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
