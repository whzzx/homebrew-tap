require "formula"

class Hawkfire < Formula
  desc "Hawkfire - Superhero Utility for Kubernetes Miroservice"
  homepage "https://www.tapo.com/"
  url "https://s3-us-east-1.amazonaws.com/tpra-dev-tmp/hawkfire/hawkfire-1.0.0.tar.gz"
  sha256 "4cdf5067e983453f9a9d27ec2f97ea922a964c3ebc026e9ad393126e6e58270c"

  depends_on "node"
  depends_on "yarn"
  depends_on "gnu-sed"
  depends_on "yq"

  def install
    system "yarn", "install"

    prefix.install "lib"
    prefix.install "README.md"
    prefix.install "yarn.lock"
    prefix.install "package.json"
    prefix.install "node_modules"

    bin.install Dir["bin/*"]
  end
end
