cask "copywheel" do
  version "0.3.3"
  sha256 "9c63181d20076cbb57aaf85d1066da1bf5a722617975ace96f1271a0beef124d"

  url "https://github.com/weselski/copywheel/releases/download/v#{version}/CopyWheel.dmg"
  name "CopyWheel"
  desc "Radial snippet-copy menu for macOS"
  homepage "https://github.com/weselski/copywheel"

  depends_on macos: :ventura

  app "CopyWheel.app"

  zap trash: [
    "~/Library/Application Support/CopyWheel",
    "~/Library/Preferences/app.copywheel.CopyWheel.plist",
  ]

  caveats <<~EOS
    CopyWheel is ad-hoc signed (not notarized). If macOS blocks the first
    launch, right-click CopyWheel.app and choose "Open", or install with:
      brew install --cask --no-quarantine weselski/tap/copywheel
  EOS
end
