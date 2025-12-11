class NegativeAutoCrop < Formula
  include Language::Python::Virtualenv

  desc "Automatic frame detection and cropping for Lightroom Classic film negatives"
  homepage "https://github.com/happyRip/Frame-Detection"
  url "https://github.com/happyRip/Frame-Detection/releases/download/v0.0.10/negative_auto_crop-0.0.10.tar.gz"
  sha256 "6a82e67e81fd18ec2918ec788a8b1e66ababc71ebbccfd90f3e0ac275fb03007"
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
