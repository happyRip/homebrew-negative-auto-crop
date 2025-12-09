cask "negative-auto-crop-plugin" do
  version "0.0.4"
  sha256 "fa2eb5a07a74d1df84669951bd41bb752a09080ff55dc164ba20308843ddbd2f"

  url "https://github.com/happyRip/Frame-Detection/releases/download/v#{version}/NegativeAutoCrop.lrplugin.zip"
  name "NegativeAutoCrop Lightroom Plugin"
  desc "Automatic frame detection and cropping plugin for Lightroom Classic"
  homepage "https://github.com/happyRip/Frame-Detection"

  depends_on formula: "happyrip/negative-auto-crop/negative-auto-crop"

  artifact "NegativeAutoCrop.lrplugin", target: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"

  zap trash: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"
end
