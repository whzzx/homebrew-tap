require "formula"

class Hawkfire < Formula
  desc "Hawkfire - Superhero Utility for Kubernetes Miroservice"
  homepage "https://www.tapo.com/"
  url "https://tpra-dev-tmp.s3.amazonaws.com/hawkfire/hawkfire-1.0.0.tar.gz"
  sha256 "fd37567b2545627b0c15adfd289c2f6e170dd50408145e276c72ca44a213ddaa"

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
