cask "pingplace" do
  version "1.4.2"
  sha256 "194ccc716627d7c266689f03c846b2779ac67e973b8718dc4c621e33dba88a11"

  url "https://github.com/NotWadeGrimridge/PingPlace/releases/download/v#{version}/PingPlace.app.tar.gz"
  name "PingPlace"
  desc "Control where notifications appear on your screen."
  homepage "https://github.com/NotWadeGrimridge/PingPlace"

  depends_on macos: :tahoe

  app "PingPlace.app"

  zap trash: [
    "~/Library/LaunchAgents/com.grimridge.PingPlace.plist",
    "~/Library/Preferences/com.grimridge.PingPlace.plist",
  ]
end
