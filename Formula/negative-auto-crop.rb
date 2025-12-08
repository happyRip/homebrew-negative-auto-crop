class NegativeAutoCrop < Formula
  desc "Automatic frame detection and cropping for Lightroom Classic film negatives"
  homepage "https://github.com/happyRip/Frame-Detection"
  url "https://github.com/happyRip/Frame-Detection/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "dbbaa005d7f4fa731056265a72bd0dab5b06596e269ac471e4520460be584c67"
  license "AGPL-3.0-or-later"

  depends_on "python@3.12"

  def install
    (libexec/"plugin").install Dir["plugin/*.lua"]
    (libexec/"frame_detection").install Dir["frame_detection/*.py"]
    libexec.install "requirements.txt"
    libexec.install "installer.py"

    (bin/"negative-auto-crop").write <<~EOS
      #!/bin/bash
      exec python3.12 "#{libexec}/installer.py" "$@"
    EOS
  end

  def caveats
    <<~EOS
      To complete installation, run:
        negative-auto-crop install

      To uninstall the plugin:
        negative-auto-crop uninstall
    EOS
  end

  test do
    system bin/"negative-auto-crop", "--help"
  end
end
