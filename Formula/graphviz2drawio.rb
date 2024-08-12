class Graphviz2drawio < Formula
  include Language::Python::Virtualenv

  desc "Convert graphviz (dot) files into draw.io / lucid (mxGraph) format"

  version "0.4.0"
  sha256 "3ff234777044a856cbac2006538c007b0d92de2aab1b2380baab50a74c60fe50"

  url "https://files.pythonhosted.org/packages/90/dd/6c2eb3c1c1b7892a1e69de9e695dc86148ddbdacaeb985cb520db9bdbc11/graphviz2drawio-0.4.0.tar.gz"
  homepage "https://github.com/hbmartin/graphviz2drawio/"
  license "GPL-3.0"

  depends_on "python3"
  depends_on "graphviz"

  resource "puremagic" do
    url "https://files.pythonhosted.org/packages/d5/ce/dc3a664654f1abed89d4e8a95ac3af02a2a0449c776ccea5ef9f48bde267/puremagic-1.27.tar.gz"
    sha256 "7cb316f40912f56f34149f8ebdd77a91d099212d2ed936feb2feacfc7cbce2c1"
  end

  resource "pygraphviz" do
    url "https://files.pythonhosted.org/packages/8c/41/7b9a22df38bb7884012b34f2986d765691dbe41bf5e7af881dfd09f8145f/pygraphviz-1.13.tar.gz"
    sha256 "6ad8aa2f26768830a5a1cfc8a14f022d13df170a8f6fdfd68fd1aa1267000964"
  end

  resource "svg.path" do
    url "https://files.pythonhosted.org/packages/33/a0/4983cdedf62c3a1dd42b698813312fc51dd159983333fce9ec4189cd83a9/svg.path-6.3.tar.gz"
    sha256 "e937740a316a7fec86acd217ab6226e112f51328078524126bb7ea9dbe7b1ade"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
