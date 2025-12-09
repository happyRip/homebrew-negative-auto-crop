cask "negative-auto-crop-plugin" do
  version "0.0.6"
  sha256 "d1e234a8212bb975775c23ecdea7c8b6e7d796d62b2da29f1903013fb3eee29a"

  url "https://github.com/happyRip/Frame-Detection/releases/download/v#{version}/NegativeAutoCrop.lrplugin.zip"
  name "NegativeAutoCrop Lightroom Plugin"
  desc "Automatic frame detection and cropping plugin for Lightroom Classic"
  homepage "https://github.com/happyRip/Frame-Detection"

  depends_on formula: "happyrip/negative-auto-crop/negative-auto-crop"

  artifact "NegativeAutoCrop.lrplugin", target: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"

  zap trash: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"
end
