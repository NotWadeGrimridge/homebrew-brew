cask "pingplace" do
  version "1.1.0"
  sha256 "f3c22fc104325039c56fcdf34b52ebd4efe8887899608f7874aadd3b9dc2262f"

  url "https://github.com/NotWadeGrimridge/PingPlace/releases/download/v#{version}/PingPlace.app.tar.gz"
  name "PingPlace"
  desc "Control where notifications appear on your screen."
  homepage "https://github.com/NotWadeGrimridge/PingPlace"

  depends_on macos: ">= :ventura"

  app "PingPlace.app"

  caveats <<~EOS
    If you're upgrading from version 1.0 to 1.1, please remove PingPlace from
    System Settings > Privacy & Security > Accessibility when prompted and
    add it again. You might also have to "trust" the app.

    Sorry for the inconvenience (blame Apple), it shouldn't happen again!
  EOS
end
