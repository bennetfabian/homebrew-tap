class NM3u8dlRe < Formula
  desc "Cross-Platform, modern and powerful stream downloader for MPD/M3U8/ISM"
  homepage "https://github.com/nilaoda/N_m3u8DL-RE"
  version "0.5.1-beta"
  license "MIT"

  livecheck do
    url :homepage
    strategy :github_releases
    regex(/(?:v)(\d+(?:\.\d+)+(-beta)?)/i)
  end

  depends_on "bento4"
  depends_on "ffmpeg"
  depends_on "shaka-packager"

  on_macos do
    on_arm do
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v0.5.1-beta/N_m3u8DL-RE_v0.5.1-beta_osx-arm64_20251029.tar.gz"
    end
    on_intel do
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v0.5.1-beta/N_m3u8DL-RE_v0.5.1-beta_osx-x64_20251029.tar.gz"
    end
  end

  def install
    bin.install "N_m3u8DL-RE"
  end

  test do
    system "#{bin}/N_m3u8DL-RE", "--version"
  end
end
