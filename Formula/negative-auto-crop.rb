class NegativeAutoCrop < Formula
  include Language::Python::Virtualenv

  desc "Automatic frame detection and cropping for Lightroom Classic film negatives"
  homepage "https://github.com/happyRip/Frame-Detection"
  url "https://github.com/happyRip/Frame-Detection/releases/download/v0.0.11/negative_auto_crop-0.0.11.tar.gz"
  sha256 "c6df73eb0070108bb253e45f90c8e3edee972f2282fe7b4484698857fdfe64a5"
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
