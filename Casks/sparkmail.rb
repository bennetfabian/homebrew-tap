cask "sparkmail" do
  version "3.0.29.37433"
  sha256 :no_check

  url "https://downloads.sparkmailapp.com/Spark3/mac/dist/#{version}/Spark.zip"
  name "Spark Mail"
  desc "Spark"
  homepage "https://sparkmailapp.com/"

  livecheck do
    strategy :page_match
    url "https://sparkmailapp.com/download"
    regex(%r{https://downloads.sparkmailapp.com/Spark3/mac/dist/([\d.]+)/Spark.zip"}i)
  end

  auto_updates true

  app "Spark Desktop.app"
end
