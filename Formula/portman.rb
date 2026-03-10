class Portman < Formula
  desc "Interactive TUI tool to manage and monitor dev server ports"
  homepage "https://github.com/bahadiraraz/portman"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-apple-darwin.tar.gz"
      sha256 "69fe7faceef130f13f5a0be98b951356e036b405acd18196ced5898c6e1e670b"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-apple-darwin.tar.gz"
      sha256 "9edbff9e032fb570bb40e9140d1243efb813574dbf0345a06c2a6c566beb5836"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7aa5546763b3790adfd1f070b7a048009cc6b3ef4b893f423a45fc51a165719"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2e8075e4eaf3262138e950f73355b282e095e708f9384c42f5e55ecedb2b437"
    end
  end

  def install
    bin.install "portman"
  end

  test do
    assert_match "portman", shell_output("#{bin}/portman --help")
  end
end
