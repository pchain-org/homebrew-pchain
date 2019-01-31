class Pchain < Formula
  homepage 'https://github.com/pchain-org/pchain'
  url 'https://github.com/pchain-org/pchain.git'
  version '0.0.3'
  
  # Require El Capitan at least
  depends_on :macos => :el_capitan

  depends_on 'go' => :build
  
  def install
    ENV["GOROOT"] = "#{HOMEBREW_PREFIX}/opt/go/libexec"
    system "go", "env" 
    system "make", "pchain"
    bin.install 'bin/pchain'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/pchain", "version"
  end
end
