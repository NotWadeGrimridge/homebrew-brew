cask "pingplace" do
  version "1.2.0"
  sha256 "b22dc261e899532b3b255ef6da887e0ca10523a5fc975b7ff3af2642ee161d27"

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
