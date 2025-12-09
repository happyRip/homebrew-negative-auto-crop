cask "negative-auto-crop-plugin" do
  version "0.0.9"
  sha256 "dad58e4ad733e819e1e96c12200ff0c3630b92db94a54c52fd5787754a48efea"

  url "https://github.com/happyRip/Frame-Detection/releases/download/v#{version}/NegativeAutoCrop.lrplugin.zip"
  name "NegativeAutoCrop Lightroom Plugin"
  desc "Automatic frame detection and cropping plugin for Lightroom Classic"
  homepage "https://github.com/happyRip/Frame-Detection"

  depends_on formula: "happyrip/negative-auto-crop/negative-auto-crop"

  artifact "NegativeAutoCrop.lrplugin", target: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"

  zap trash: "~/Library/Application Support/Adobe/Lightroom/Modules/NegativeAutoCrop.lrplugin"
end
