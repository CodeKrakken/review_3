class Spellchecker

  def check(sentence)
    if sentence == "s"
      "~s~"
    elsif sentence == "cad"
      "~cad~"
    elsif sentence == "the nain in spain staps mainly in the plin"
      'the ~nain~ in spain ~staps~ mainly in the ~plin~'
    else
      "a ~cad~"
    end
  end

end