class Toucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  version "1.0.0.rc.1"

  if OS.mac?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-macos-1.0.0.rc.1.zip"
    sha256 "2c520f9891818530736800e90db317eeec94d302c317e96ac2ad93ed7770dbc2"
  elsif OS.linux?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-linux-1.0.0.rc.1.zip"
    sha256 "1ce193a9641899990b121a669f41512dd9fa8401c1e31314253de4ce8156a749"
  end

  def install
    bin.install "toucan"
    bin.install "toucan-init"
    bin.install "toucan-generate"
    bin.install "toucan-serve"
    bin.install "toucan-watch"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/toucan --help")
  end
end
