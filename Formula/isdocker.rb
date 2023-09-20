# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Isdocker < Formula
  desc "a CLI utility for orchestrating Docker based developer environments"
  homepage "https://github.com/defenseoftheancients/isdocker"
  url "https://github.com/defenseoftheancients/isdocker/archive/refs/tags/1.0.0.tar.gz"
  sha256 "023b45d397aa6a395ad6fa0131236ac9cc99f6ec5f58aa7655d1e0bbbe89e35e"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install "defenseoftheancients/isdocker"
    bin.install "bin/isdocker" => "isdocker"
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test isdocker`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

