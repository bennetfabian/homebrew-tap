class CurlImpersonate < Formula
  desc "Patched curl that make requests look like Chrome, Firefox and Safari"
  homepage "https://github.com/lexiforest/curl-impersonate"
  url "https://github.com/lexiforest/curl-impersonate/archive/refs/tags/v1.2.2.tar.gz"
  version "1.2.2"
  sha256 "35a434900d36622cfa3350cb72f1cbd3a6385081437359181590b7b656ad00e6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lexiforest/curl-impersonate/releases/download/v1.2.2/curl-impersonate-v1.2.2.arm64-macos.tar.gz"
      sha256 "9e22e2f9effee5483e8f38d5697311db35d20e5b8802d0d427a3cd814f20fad8"
    end
    on_intel do
      url "https://github.com/lexiforest/curl-impersonate/releases/download/v1.2.2/curl-impersonate-v1.2.2.x86_64-macos.tar.gz"
      sha256 "187c669d2e7c7f70e5916c2785edca6211cedc42628121a1c9b76f2532fc1204"
    end
  end

  def install
    bin.install "curl-impersonate"
    bin.install Dir["curl_*"]
  end

  test do
    system "#{bin}/curl-impersonate", "--version"
  end
end
