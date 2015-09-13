# require "__FILE__"
require 'pry'

class ComfortMe

  COMFORT_ME_BOT = ["i know this is a touchy subject", "i can help", "lets boogie down"]

  COMFORT_FLAGS = %w{
    boobs,touch,kill,me,symptoms,biopsy,weird,dying,parents,can't,
    cannot,sleep,diagnosis,bad,worst,tomorrow,know,appointment,
    ultrasound,pictures,reason,shit,fuck,fck,fking,fcking,
    calcification,mom,dad,brother,sister,family,hereditary,
    shopping,splurging,clear,clear my mind,mind heart,god,God,GOD
    shock,grandma,grandmother,nanna,grandpa,grandfather,annoying,pain,
    gift,life,regret,regrets,regretting,resent,resentment,resentful
    passed,passed out,passed away,treatment,tx,treatments,plans,
    plan,planning,option,options,scared,scare,scary,MRI
    test,tests,testing,IV,lose,losing,loss,hair,mutate,mutation,mutations,prevent,
    prevents,prevention,morbid,cancer,cancerous,chemo,chemotherapy,echocardiogram,
    tired,tiring,needles,blood,release,forgiveness,vulnerable, vulnerability,
    sweetness,sweet,welcoming,welcome,emotional,emotion,emotionscontrol,controls,
    controlling,body,own,ownership
  }

  def initialize(message)
    @message = message
    #binding.pry
  end

  def talk_to_comfort_me_bot
    if COMFORT_FLAGS.any? {|word| @message.include?(word) }
      COMFORT_ME_BOT.sample
    else
      puts "whatchu want girl?"
    end
  end

end

comfort_me = ComfortMe.new("I am just worried that I am going to lose all of my hair")
puts comfort_me.talk_to_comfort_me_bot
