cask "negative-auto-crop-plugin" do
  version "0.0.3"
  sha256 "cd6b25c543dd6a4eda8f733267c05930481a254b50c9c5b1d165bb73b13f42e1"

  url "https://github.com/happyRip/Frame-Detection/releases/download/v#{version}/NegativeAutoCrop.lrplugin.zip"
  name "NegativeAutoCrop Lightroom Plugin"
  desc "Automatic frame detection and cropping plugin for Lightroom Classic"
  homepage "https://github.com/happyRip/Frame-Detection"

  depends_on formula: "happyrip/negative-auto-crop/negative-auto-crop"

  artifact "NegativeAutoCrop.lrplugin", target: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"

  zap trash: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"
end
