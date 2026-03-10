class Portman < Formula
  desc "Interactive TUI tool to manage and monitor dev server ports"
  homepage "https://github.com/bahadiraraz/portman"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-apple-darwin.tar.gz"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-unknown-linux-gnu.tar.gz"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-unknown-linux-gnu.tar.gz"
    end
  end

  def install
    bin.install "portman"
  end

  test do
    assert_match "portman", shell_output("#{bin}/portman --help")
  end
end
