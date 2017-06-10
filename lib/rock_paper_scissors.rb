class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    case player1[1] + player2[1]
    when 'PR', 'RS','SP'
      player1
    when 'SR', 'RP', 'PS'
      player2
    when 'RR', 'PP', 'SS'
      player1
    else 
      raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
    
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a?(String)
      winner(tournament[0], tournament[1])
    else
      winner(tournament_winner(tournament[1]), tournament_winner(tournament[0]))
    end
    
    
  end

end
