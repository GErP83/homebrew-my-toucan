class MyToucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/GErP83/my-toucan"
  url "https://github.com/GErP83/my-toucan/archive/refs/tags/1.0.0-beta.4.tar.gz"
  sha256 "98dae9e6590fb5ad634dd552ce1c2e58246daf4da15b1262345f56e058293b57"

  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/toucan"
    bin.install ".build/release/toucan-generate"
    bin.install ".build/release/toucan-init"
    bin.install ".build/release/toucan-serve"
    bin.install ".build/release/toucan-watch"
  end

  test do
    system "#{bin}/toucan", "--help"
  end
end