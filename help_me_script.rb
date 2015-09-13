# require "__FILE__"
require 'pry'

class Helper

RED_FLAGS = %w{
  kill, killed, killing, death, die, dying, symptoms, sleepless,
  diagnosis, worst, suicide, regret, regrets, regretting, loss,
  losing, lose
}

def initialize(message)
  @message = message
end

def talk_to_helper_bot
  @message.each do |word|

  end

  # “what can I do to help?"
  # "all I care about right now is helping you."
  # “just know that I’m here for you. how can I help?"

  # “am I being annoying?"
    # if response == "yes".downcase || "y".downcase
      # "no worries. let's talk later"
    # else
      # "well i'm not doing anything anyway. what's up?"
    # end

  # "do you want to talk to a nurse or doctor now?"
    # if response == "yes".downcase || "y.downcase"
      # "okay. I'll call Pager and see if we can get someone to you ASAP"
    # else
      # "no worries. shoot me a text later if you wanna chat"
    # end

  # sounds like you're worried
  # i can help
  # i'll wait. tell me when you're done
  # sounds like you're okay, but it sounds like you may have some side effects. bring me with you to the doctor

  # message.sample

end

end

help = Helper.new("I want to die")
