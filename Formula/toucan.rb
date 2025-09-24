class Toucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  version "1.0.0.rc.1"

  if OS.mac?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-macos-1.0.0.rc.1.zip"
    sha256 "db15c12c51963aeda7fb382a37685b40d8399dcbed99dc0d90c1d6ca4e7f5a86"
  elsif OS.linux?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-linux-1.0.0.rc.1.zip"
    sha256 "c348de7a165a30722c915b6fa76a6806922caadf29414f4eaec4f099fd176fe3"
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
