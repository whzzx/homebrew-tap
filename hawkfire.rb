require "formula"

class Hawkfire < Formula
  desc "Hawkfire - Superhero Utility for Kubernetes Miroservice"
  homepage "https://www.tapo.com/"
  url "https://uat-tplinknbu-cicd-aps1.s3.amazonaws.com/hawkfire/hawkfire-1.0.1.tar.gz"
  sha256 "cc21b6ea3c3e1bc4f2c184b486414c6c11d2fd5ff8feeb98151c9f1f36ee3098"

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
