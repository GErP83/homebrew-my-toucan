class MyToucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  version "1.0.0.rc.1"

  if OS.mac?
    url "https://github.com/GErP83/my-toucan/releases/download//toucan-macos-1.0.0.rc.1.zip"
    sha256 "Not"
  elsif OS.linux?
    url "https://github.com/GErP83/my-toucan/releases/download//toucan-linux-1.0.0.rc.1.zip"
    sha256 "Not"
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
