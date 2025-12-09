class NegativeAutoCrop < Formula
  include Language::Python::Virtualenv

  desc "Automatic frame detection and cropping for Lightroom Classic film negatives"
  homepage "https://github.com/happyRip/Frame-Detection"
  url "https://github.com/happyRip/Frame-Detection/releases/download/v0.0.4/negative_auto_crop-0.0.4.tar.gz"
  sha256 "4b4ac7d371104aeda527e8a564a7189f1223a4fea36d5994112fa983d0ff43ca"
  license "AGPL-3.0-or-later"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/python", "-m", "pip", "install", "."
    bin.install_symlink Dir[libexec/"bin/negative-auto-crop"]
  end

  test do
    system bin/"negative-auto-crop", "--help"
  end
end
