class FregeRepl < Formula
  desc "REPL for Frege, a Haskell for the JVM"
  homepage "https://github.com/Frege/frege-repl"
  url "https://github.com/Frege/frege-repl/releases/download/1.4-SNAPSHOT/frege-repl-1.4-SNAPSHOT.zip"
  version "1.4-SNAPSHOT"
  sha256 "746bc4249347c940b4313484c54cf94e9c46dcfe603ceb689ffa8abfc900b50b"

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install Dir["*"]
    bin.install_symlink libexec+"bin/frege-repl"
  end

  test do
    output = shell_output("#{bin}/frege-repl --version")
    assert_match /Welcome to Frege/, output
  end
end
