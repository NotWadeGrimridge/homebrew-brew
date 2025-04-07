cask "pingplace" do
  version "1.0.0"
  sha256 "e50b10ea46dcdb553e013ee7bb947cb84dd1f2792aac69664814acd6942f8fbe"

  url "https://github.com/NotWadeGrimridge/PingPlace/releases/download/v#{version}/PingPlace.app.tar.gz"
  name "PingPlace"
  desc "Control where notifications appear on your screen."
  homepage "https://github.com/NotWadeGrimridge/PingPlace"

  depends_on macos: ">= :ventura"

  app "PingPlace.app"
end
