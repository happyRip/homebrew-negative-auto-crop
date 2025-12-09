class NegativeAutoCrop < Formula
  include Language::Python::Virtualenv

  desc "Automatic frame detection and cropping for Lightroom Classic film negatives"
  homepage "https://github.com/happyRip/Frame-Detection"
  url "https://github.com/happyRip/Frame-Detection/releases/download/v0.0.6/negative_auto_crop-0.0.6.tar.gz"
  sha256 "50bfde0ddc0f83839842e5ab41d51a1100fbb7b90cb174ad11673bb8b0282e13"
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
