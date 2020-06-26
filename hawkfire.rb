require "formula"

class Hawkfire < Formula
  desc "Hawkfire - Superhero Utility for Kubernetes Miroservice"
  homepage "https://www.tapo.com/"
  url "https://tpra-dev-tmp.s3.amazonaws.com/hawkfire/hawkfire-1.0.0.tar.gz"
  sha256 "75b7dd659d3678cbb070607e7f2e843db6ce00a664e619da20b3c3f9228c853a"

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
