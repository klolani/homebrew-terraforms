class Chtf < Formula
  desc 'Terraform version switcher'
  homepage 'https://github.com/Yleisradio/homebrew-terraforms#readme'
  url 'https://github.com/Yleisradio/homebrew-terraforms/archive/v1.3.0.tar.gz'
  sha256 '31bf27a5ccab98942159a94a13c530e951deafb00c9b431535462003d8d7bdfe'

  head 'https://github.com/Yleisradio/homebrew-terraforms.git'

  def install
    share.install 'chtf'
  end

  def caveats; <<-EOS.undent
    Add the following to the ~/.bashrc or ~/.zshrc file:

        source #{opt_share}/chtf/chtf.sh

    Then you can choose (and automatically install) a specified Terraform
    version, e.g.:

        chtf 0.6.8

    EOS
  end
end
