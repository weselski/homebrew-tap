cask "copywheel" do
  version "0.3.0"
  sha256 "2103cd48dbeb547bec93ffad564baa0b586c305b2a8b23e33031bd0a7202a471"

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
