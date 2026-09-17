cask "clarity-flutter" do
  version "1.0.0"
  sha256 "574f8277c2db38c227a377728ec58843231474a9e9c0ec9834be5cc587499067"

  url "https://github.com/hariprasad2512/clarity_flutter/releases/download/v#{version}/Clarity-#{version}-macos.zip"
  name "Clarity (Flutter)"
  desc "Minimal local-first todo app for macOS"
  homepage "https://github.com/hariprasad2512/clarity_flutter"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Unsigned build (no paid Apple Developer ID): install with
  #   brew install --cask --no-quarantine hariprasad2512/clarity/clarity-flutter
  # First launch needs a one-time approval: right-click Clarity.app in
  # Finder → Open → Open. It then launches normally forever.
  app "Clarity.app"

  zap trash: [
    "~/Library/Application Support/clarity_flutter",
    "~/Library/Preferences/com.harry.Clarity.plist",
  ]
end
