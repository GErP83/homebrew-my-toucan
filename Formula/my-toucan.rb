class MyToucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  version "1.0.0-beta.4"

  if OS.mac?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-beta.4/toucan-macos-1.0.0.beta.4.zip"
    sha256 "9041431a52caf14aae944b1be08243d149e2d660f008899469961734d18bc585"
  elsif OS.linux?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-beta.4/toucan-linux-1.0.0.beta.4.zip"
    sha256 "1614c2f00e042a47b6dd25d0480c308ce5353722dff72ef0dd7f98769de97d26"
  end
  
  def install
    bin.install ".build/release/toucan"
    bin.install ".build/release/toucan-generate"
    bin.install ".build/release/toucan-init"
    bin.install ".build/release/toucan-serve"
    bin.install ".build/release/toucan-watch"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/toucan --help")
  end
end