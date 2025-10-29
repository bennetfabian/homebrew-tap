class NM3u8dlRe < Formula
  desc "Cross-Platform, modern and powerful stream downloader for MPD/M3U8/ISM"
  homepage "https://github.com/nilaoda/N_m3u8DL-RE"
  version "0.3.0-beta"
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
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v0.3.0-beta/N_m3u8DL-RE_v0.3.0-beta_osx-arm64_20241203.tar.gz"
    end
    on_intel do
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v0.3.0-beta/N_m3u8DL-RE_v0.3.0-beta_osx-x64_20241203.tar.gz"
      sha256 "a75f80872b24ad2e67eef98c8f7edba60db512af83f5bb2cf8bdc3c1de273423"
    end
  end

  def install
    bin.install "N_m3u8DL-RE"
  end

  test do
    system "#{bin}/N_m3u8DL-RE", "--version"
  end
end
