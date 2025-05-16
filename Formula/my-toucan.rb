class MyToucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  version "1.0.0-beta.4"

  if OS.mac?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-beta.4/toucan-macos-1.0.0.beta.4.zip"
    sha256 "PASTE_MACOS_SHA256_HERE"
  elsif OS.linux?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-beta.4/toucan-linux-1.0.0.beta.4.zip"
    sha256 "PASTE_LINUX_SHA256_HERE"
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