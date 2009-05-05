require "pathname"

class NaturallySortedPathname < Pathname
  def <=>(other)
    own_matchdata   = comparison_regexp.match(self.basename)
    other_matchdata = comparison_regexp.match(other.basename)

    own_matchdata[1].to_i <=> other_matchdata[1].to_i
  end

  def comparison_regexp
    /(?:[a-zA-Z_%]*)(\d+)/
  end
end
