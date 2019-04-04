class Phonetic < Formula
  version "0.1"
  desc "Output a string with the NATO phonetic alphabet"
  homepage "https://github.com/brianmorton/phonetic"
  url "https://github.com/brianmorton/phonetic/releases/download/v#{version}/phonetic.tar.gz"
  sha256 "065275563f28bb0138b119e01a3ea9cc8f5c038812c61edd167f36f77df894ff"

  def install
    bin.install "phonetic"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test phonetic`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/phonetic", "qwerty123"
  end
end
