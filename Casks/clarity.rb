cask "clarity" do
  version "2.0.1"
  sha256 "6f97b64731db8536971c8ed807bb6047f119c64d54ec3d05de54ef4d28cf73df"

  url "https://github.com/hariprasad2512/Clarity/releases/download/v2.0.1/Clarity-macOS-v2.0.1.zip"
  name "Clarity"
  desc "Minimal Todoist-style todo app for macOS"
  homepage "https://github.com/hariprasad2512/Clarity"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clarity.app"

  caveats <<~EOS
    First launch needs a one-time approval (signed with a free Apple ID,
    not notarized): right-click Clarity.app in Finder → Open → Open.
    It then launches normally forever.
  EOS
end
