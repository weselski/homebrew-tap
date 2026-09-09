cask "copywheel" do
  version "0.3.2"
  sha256 "1aeb79da233b814b4144f3784d5adf6bcaf48a142564d67e20d7fc4de2bbc7fb"

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
