class ShakaPackager < Formula
  desc "Media packaging and development framework for VOD and Live DASH/HLS applications"
  homepage "https://shaka-project.github.io/shaka-packager/"
  version "3.4.2"
  license "BSD-3-Clause"

  livecheck do
    url "https://github.com/shaka-project/shaka-packager/releases"
    strategy :github_releases
  end

  on_macos do
    on_arm do
      url "https://github.com/shaka-project/shaka-packager/releases/download/v3.4.2/packager-osx-arm64"
      sha256 "d97cc27e2b003dd56937c54eb08f0c3f61637ad976a2d98b8bf2adaf041cb1c2"

      resource "mpd_generator" do
        url "https://github.com/shaka-project/shaka-packager/releases/download/v3.4.2/mpd_generator-osx-arm64"
        sha256 "479e75e36025ed328d884675d6f4cc48a04f99e023896e0c27019216059132cb"
      end
    end

    on_intel do
      url "https://github.com/shaka-project/shaka-packager/releases/download/v3.4.2/packager-osx-x64"
      sha256 "cd70359fe9dadca88cce4a7ec32d93184d13f3439cf0f43fd95156dd8b8135df"

      resource "mpd_generator" do
        url "https://github.com/shaka-project/shaka-packager/releases/download/v3.4.2/mpd_generator-osx-x64"
        sha256 "bb68811820d6194c71debc10186ba83c10243071addbe5ab60aa8db6f7a2579f"
      end
    end
  end

  def install
    # Install the main packager binary
    bin.install Dir["packager*"].first => "packager"

    # Stage and rename mpd_generator binary
    resource("mpd_generator").stage do
      bin.install Dir["mpd_generator*"].first => "mpd_generator"
    end
  end

  test do
    system "#{bin}/packager", "--version"
    system "#{bin}/mpd_generator", "--version"
  end
end
