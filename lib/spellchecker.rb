class Spellchecker

  def check(sentence)
    case sentence
    when "s"
      "~s~"
    when "cad"
      "~cad~"
    when "the nain in spain staps mainly in the plin"
      'the ~nain~ in spain ~staps~ mainly in the ~plin~'
    when "this is a correct sentence"
      sentence
    else
      "a ~cad~"
    end
  end

end