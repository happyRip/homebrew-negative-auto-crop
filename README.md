# Homebrew Tap for NegativeAutoCrop

Automatic frame detection and cropping for Lightroom Classic film negatives.

## Installation

```bash
brew tap happyRip/negative-auto-crop
brew install negative-auto-crop
brew install --cask negative-auto-crop-plugin
```

This installs:
- `negative-auto-crop` formula: Python backend for frame detection
- `negative-auto-crop-plugin` cask: Lightroom Classic plugin

## Usage

After installation, the plugin appears in Lightroom Classic under:
- **File > Plug-in Extras > Auto Crop**
- **File > Plug-in Extras > Settings**

## Uninstallation

```bash
brew uninstall --cask negative-auto-crop-plugin
brew uninstall negative-auto-crop
brew untap happyRip/negative-auto-crop
```
