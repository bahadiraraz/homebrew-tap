class Portman < Formula
  desc "Interactive TUI tool to manage and monitor dev server ports"
  homepage "https://github.com/bahadiraraz/portman"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-apple-darwin.tar.gz"
      sha256 "7c5c172f801f762325c6299c924ddd71df7fe782ad52824ef377d750d986bc12"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-apple-darwin.tar.gz"
      sha256 "79c465157ddf19e9530639da1dc29d227ffab5c52a5e06a5e4cf3396cbe63180"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1d21a49371dbc56811981f251996ae505c8893f3cc3511aacb080e5340088f4"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22485d78ae5022aa8b2c90c00084dce5ccf62021a9abb675b437f2a75e62fff9"
    end
  end

  def install
    bin.install "portman"
  end

  test do
    assert_match "portman", shell_output("#{bin}/portman --help")
  end
end
