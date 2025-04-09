cask "pingplace" do
  version "1.0.1"
  sha256 "dee8c52db893f75c4164e34ff69988b4b13e8a693cde1cb052cbf26dce9afebe"

  url "https://github.com/NotWadeGrimridge/PingPlace/releases/download/v#{version}/PingPlace.app.tar.gz"
  name "PingPlace"
  desc "Control where notifications appear on your screen."
  homepage "https://github.com/NotWadeGrimridge/PingPlace"

  depends_on macos: ">= :ventura"

  app "PingPlace.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "#{staged_path}/PingPlace.app"]
  end
end
