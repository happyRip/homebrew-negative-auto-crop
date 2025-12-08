class NegativeAutoCrop < Formula
  desc "Automatic frame detection and cropping for Lightroom Classic film negatives"
  homepage "https://github.com/happyRip/Frame-Detection"
  url "https://github.com/happyRip/Frame-Detection/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "4742b55a2faf6bf55e942feff79436546aef45884434387a2abb705cbbbf839f"
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
