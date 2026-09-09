cask "copywheel" do
  version "0.2.0"
  sha256 "506abf4beb92bdb9fd4611edc9d04898d326d214775ea3c5ec6bd7a5ec9a8bf1"

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
