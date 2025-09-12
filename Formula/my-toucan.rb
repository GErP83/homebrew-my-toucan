class MyToucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  version "1.0.0.rc.1"

  if OS.mac?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-macos-1.0.0.rc.1.zip"
    sha256 "3d1db5d83c295b8d16f14c4786c06b05adb0c5c89c069db5783175c56c8e9fba"
  elsif OS.linux?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-linux-1.0.0.rc.1.zip"
    sha256 "29f1a6d2a67cd14de38f7e3ae9482cd7ee7601b6ee090c1a4c5e902f0213f781"
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
