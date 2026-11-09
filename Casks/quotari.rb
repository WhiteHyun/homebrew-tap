cask "quotari" do
  version "0.8.1"
  sha256 "6106242382096b5e3616f1881d7646decee23dfb9726369cf0b3de88ccc5acd0"

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
  binary "#{appdir}/Quotari.app/Contents/Helpers/quotari"

  zap trash: [
    "~/Library/Application Support/Quotari",
    "~/Library/Caches/com.whitehyun.quotari",
    "~/Library/Caches/Quotari",
    "~/Library/HTTPStorages/com.whitehyun.quotari",
    "~/Library/Preferences/com.whitehyun.quotari.plist",
  ]
end
