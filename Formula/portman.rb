class Portman < Formula
  desc "Interactive TUI tool to manage and monitor dev server ports"
  homepage "https://github.com/bahadiraraz/portman"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-apple-darwin.tar.gz"
      sha256 "0c374a45a23e43260daa3c0d23381f1c8fcadb5a3df04fbf03f234916eeaf362"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-apple-darwin.tar.gz"
      sha256 "21237eac496604f44f3c6ee5708573def0d159422d4b7551afb9a154edb69278"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "331ffb89eda1a423d4bae5a0dbd34bd60cf95a68e785b61e2e6c742eb0e25fa2"
    else
      url "https://github.com/bahadiraraz/portman/releases/download/v#{version}/portman-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbc52ed6767c4a2a933096800e9f66c8af83a183f87cc0ef2f9e8911abab424a"
    end
  end

  def install
    bin.install "portman"
  end

  test do
    assert_match "portman", shell_output("#{bin}/portman --help")
  end
end
