class Catnip < Formula
  desc "Terminal audio visualizer"
  homepage "https://github.com/noriah/catnip"
  url "https://github.com/noriah/catnip/archive/refs/heads/master.zip"
  version "latest"
  license "MIT"

  depends_on "go" => :build
  depends_on "fftw"
  depends_on "portaudio"

  def install
    # Go 빌드: ./cmd/catnip 경로에 메인 소스가 있음
    system "go", "build", *std_go_args(output: bin/"catnip"), "./cmd/catnip"
  end

  test do
    # 설치 확인: 실행 파일이 정상 동작하는지 체크
    assert_match "Usage", shell_output("#{bin}/catnip --help", 1)
  end
end
