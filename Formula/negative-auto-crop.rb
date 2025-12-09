class NegativeAutoCrop < Formula
  include Language::Python::Virtualenv

  desc "Automatic frame detection and cropping for Lightroom Classic film negatives"
  homepage "https://github.com/happyRip/Frame-Detection"
  url "https://github.com/happyRip/Frame-Detection/releases/download/v0.0.3/negative_auto_crop-0.0.3.tar.gz"
  sha256 "dbb9cf19809e5cf3e150404d51b08eac9aa6755b0aeb1b73368a82fba0a3e1d7"
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
