cask "pingplace" do
  version "1.4.0"
  sha256 "0b88ecca4462570e47bd3f4c77df4c58d2feffa23c5974b166eb5128f12716d8"

  url "https://github.com/NotWadeGrimridge/PingPlace/releases/download/v#{version}/PingPlace.app.tar.gz"
  name "PingPlace"
  desc "Control where notifications appear on your screen."
  homepage "https://github.com/NotWadeGrimridge/PingPlace"

  depends_on macos: ">= :tahoe"

  app "PingPlace.app"

  zap trash: [
    "~/Library/LaunchAgents/com.grimridge.PingPlace.plist",
    "~/Library/Preferences/com.grimridge.PingPlace.plist",
  ]
end
