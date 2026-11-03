cask "quotari" do
  version "0.7.1"
  sha256 "33db0ae35f3f21575dc3db480684b0b8a2833d4104e987dd060da5dcacc6a28c"

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
