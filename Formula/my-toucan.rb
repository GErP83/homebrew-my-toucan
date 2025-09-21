class MyToucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  version "1.0.0.rc.1"

  if OS.mac?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-macos-1.0.0.rc.1.zip"
    sha256 "0dd1470b87ba3c2f3c82b79ac03d79ad2e095054ca223efbac06c39572b4024e"
  elsif OS.linux?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-linux-1.0.0.rc.1.zip"
    sha256 "3a4a73db5e015751f482abbc78335dc378a6a71cc561ab89b9b09576fff061b7"
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
