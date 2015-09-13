require './config/environment'

class Analyzer
  def initialize
    Sentimentalizer.setup
  end

  def process(phrase)
    Sentimentalizer.analyze phrase
  end
end

class Message < ActiveRecord::Base
  belongs_to :user
  has_many :tags

  def initialize(message)
    @message = message
  end

  def parse_JSON(json)
    JSON.parse(json)
  end

  # sentiment analysis
  def rate_sentiment
    Sentimentalizer.setup
    analysis = Sentimentalizer.analyze(@message)
    @result = analysis.sentiment
  end

  #
  def choose_response(probability, sentiment)
    if @result == ":)" || @result == ":|"
      small_talk
    else

    end
  end

  # helper methods for choose response


  def small_talk
  end

  def remind
    greet
    small_talk

  end

  def counsel
  end

  def comfort
  end


end


binding.pry
