class MyToucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  version "1.0.0-beta.5"

  if OS.mac?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-beta.5/toucan-macos-1.0.0.beta.5.zip"
    sha256 "2166bba63106a84c60ec656ca89ddb156e081ccea4a35c703a823f7bbc7a8686"
  elsif OS.linux?
    url "https://github.com/GErP83/my-toucan/releases/download/1.0.0-beta.5/toucan-linux-1.0.0.beta.5.zip"
    sha256 "f50cafd49e85b2218a19d0a35f09331df89ee3334a565f9d366d722a241f909a"
  end
  
  def install
    bin.install "toucan"
    bin.install "toucan-init"
    bin.install "toucan-generate"
    bin.install "toucan-serve"
    bin.install "toucan-watch"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/toucan --help")
  end
end