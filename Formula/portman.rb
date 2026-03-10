class Portman < Formula
  desc "Interactive TUI tool to manage and monitor dev server ports"
  homepage "https://github.com/bahadiraraz/portman"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-apple-darwin.tar.gz"
      sha256 "910eac92a76994bf20dd948f438bc7f764972d8a8d02a482ad67699a72493c3b"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-apple-darwin.tar.gz"
      sha256 "d515e2a88033f4e744550674f28b92276f44e0ed6be95f0d7c6716d48829a440"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14cac73c6f9436fce6903dd5d33b7cfc3729053a62fd5c44560fa6eeb2ae4b2c"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a35dacd5d6a6cf14d81d97b3b5745a64d50c5d728e79db65bbafa02d72a3950"
    end
  end

  def install
    bin.install "portman"
  end

  test do
    assert_match "portman", shell_output("#{bin}/portman --help")
  end
end
