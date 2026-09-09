cask "copywheel" do
  version "0.2.1"
  sha256 "14c72513ed0354c12f67f0a18fcb352d6a33915285b90065d7080511672bc36f"

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
