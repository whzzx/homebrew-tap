require "formula"

class Hawkfire < Formula
  desc "Hawkfire - Superhero Utility for Kubernetes Miroservice"
  homepage "https://www.tapo.com/"
  url "https://uat-tplinknbu-cicd-aps1.s3.amazonaws.com/hawkfire/hawkfire-1.0.2.tar.gz"
  version "1.0.2"
  sha256 "8949118988069b3e325952ba5186605624b17aff47907bb21e3e23b982057652"

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
