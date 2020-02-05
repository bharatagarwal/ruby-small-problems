class AuthenticationError < StandardError; end

class SearchEngine
  def self.count(query, api_key)
    unless valid?(api_key)
      raise AuthenticationError, 'API key invalid.'
    end

    rand(200_000)
  end

  private

  def self.valid?(key)
    key == 'LS1A'
  end
end

module DoesItRock
  API_KEY = 'LS1A'

  class NoScore; end

  class Score
    def self.for_term(term)
      positive = SearchEngine.count(%{"#{term} rocks"}, API_KEY).to_f
      negative = SearchEngine.count(%{"#{term} is not fun"}, API_KEY).to_f

      positive / (positive + negative)
    rescue ZeroDivisionError
      NoScore.new
    end
  end

  def self.find_out(term)
    score = Score.for_term(term)

    case score
    when NoScore
      "No idea about #{term}..."
    when 0..0.5
      "#{term} is not fun."
    when 0.5
      "#{term} seems to be okay..."
    else
      "#{term} rocks!"
    end
  rescue StandardError => e
    e.message
  end

end

p DoesItRock.find_out('Sushi')
p DoesItRock.find_out('Bug hunting')
p DoesItRock.find_out('Rain')
p DoesItRock.find_out('Sushi')
p DoesItRock.find_out('Bug hunting')
p DoesItRock.find_out('Rain')
