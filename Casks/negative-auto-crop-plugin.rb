cask "negative-auto-crop-plugin" do
  version "0.0.11"
  sha256 "f7d24e91b97cc7f9054dd86e6c48976393aa3882e92c385e3e4651de2cf9e462"

  url "https://github.com/happyRip/Frame-Detection/releases/download/v#{version}/NegativeAutoCrop.lrplugin.zip"
  name "NegativeAutoCrop Lightroom Plugin"
  desc "Automatic frame detection and cropping plugin for Lightroom Classic"
  homepage "https://github.com/happyRip/Frame-Detection"

  depends_on formula: "happyrip/negative-auto-crop/negative-auto-crop"

  artifact "NegativeAutoCrop.lrplugin", target: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"

  zap trash: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"
end
