class Catnip < Formula
  desc "Terminal audio visualizer"
  homepage "https://github.com/noriah/catnip"
  url "https://github.com/noriah/catnip/archive/refs/heads/master.zip"
  version "latest"

  depends_on "go" => :build
  depends_on "fftw"
  depends_on "portaudio"

  def install
    system "make"
    bin.install "bin/catnip"
  end
end
