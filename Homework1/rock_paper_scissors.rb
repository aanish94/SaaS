def checker(a,b)
whatBeats = { "R" => "P", "P" => "S", "S" => "R" }

  if whatBeats[a] != b
  return a
  end
  return b
end
def validate(a)
  a = a.upcase
  if a=="R" or a == "P" or a == "S"
    return true
  end
  return false
end

class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ;

  end
  def self.winner(player1, player2)
  if !validate(player1[1]) or !validate(player2[1])
    raise RockPaperScissors::NoSuchStrategyError, "Strategy must be one of R,P,S"
  end

  if checker(player1[1],player2[1]) == player1[1]
    return player1
  end
  return player2

  end

#  def self.tournament_winner(tournament)
# if tournament[0][0].is_a? String
#   return winner(tournament)
# end

# return winner([tournament_winner(tournament[0]),tournament_winner(tournament[1])])

#  end
  def self.tournament_winner(tournament)
     if tournament[0][0].is_a? String
          return winner(tournament[0],tournament[1])
     else
        a = tournament_winner(tournament[0])
        b = tournament_winner(tournament[1])
        return winner([a,b][0],[a,b][1])
       end
  end
end

puts RockPaperScissors.tournament_winner([[ [["Armando","R"],["Dave","S"]], [["Rich","R"],
["Mike","P"]],],[ [["Allen","P"],["Dave","R"]], [["Rcan","P"],["adsf","S"]] ]])
