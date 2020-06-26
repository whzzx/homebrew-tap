require "formula"

class Hawkfire < Formula
  desc "Hawkfire - Superhero Utility for Kubernetes Miroservice"
  homepage "https://www.tapo.com/"
  url "https://s3-us-east-1.amazonaws.com/tpra-dev-tmp/hawkfire/hawkfire-1.0.0.tar.gz"
  sha256 "b94bc0679474aefbe0263fa0593426a9ad536fa06603a36d1ad05bec70ece7e9"

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
