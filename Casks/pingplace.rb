cask "pingplace" do
  version "1.4.1"
  sha256 "91efd5ef72ed7ddbb4acef9c839724b041d13d6f942b55060c75e7d6a7ff44a8"

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
