class MyToucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  version "1.0.0.rc.1"

  if OS.mac?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-macos-1.0.0.rc.1.zip"
    sha256 "b96355d9cc56d1a225486e4ac6e961ed989f07cebfa223ec48bccf64b779a192"
  elsif OS.linux?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-rc.1/toucan-linux-1.0.0.rc.1.zip"
    sha256 "71700511b2487cecaca14edf1279e261aa6cde4dc946bb99ac183eefe5834202"
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
