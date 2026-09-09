cask "clarity" do
  version "2.0.0"
  sha256 "bce100910a4a6181c6f2e8665f52f821b75df2feacea8021f90fc14bd4e4380a"

  url "https://github.com/hariprasad2512/Clarity/releases/download/v2.0.0/Clarity-macOS-v2.0.0.zip"
  name "Clarity"
  desc "Minimal Todoist-style todo app for macOS"
  homepage "https://github.com/hariprasad2512/Clarity"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clarity.app"
end
