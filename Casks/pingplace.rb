cask "pingplace" do
  version "1.3.0"
  sha256 "957d13168454b5bae56a0a6459e36dbdd5cc876c43aefdf61f05952bbb0e6a32"

  url "https://github.com/NotWadeGrimridge/PingPlace/releases/download/v#{version}/PingPlace.app.tar.gz"
  name "PingPlace"
  desc "Control where notifications appear on your screen."
  homepage "https://github.com/NotWadeGrimridge/PingPlace"

  depends_on macos: ">= :ventura"

  app "PingPlace.app"

  zap trash: [
    "~/Library/LaunchAgents/com.grimridge.PingPlace.plist",
    "~/Library/Preferences/com.grimridge.PingPlace.plist",
  ]

  caveats <<~EOS
    If you're upgrading from version 1.0 to 1.1, please remove PingPlace from
    System Settings > Privacy & Security > Accessibility when prompted and
    add it again. You might also have to "trust" the app.

    Sorry for the inconvenience (blame Apple), it shouldn't happen again!
  EOS
end
