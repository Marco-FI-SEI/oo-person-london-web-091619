class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25.00
    @happiness = 8 #max 10, min 0
    @hygiene = 8 #max 10, min 0
  end

  def minmax_setter(number)
    if number > 10
      number = 10
    elsif number < 0
      number = 0
    else
      number = number
    end
  end

  def hygiene=(number)
    @hygiene = minmax_setter(number)
  end

  def happiness=(number)
    @happiness = minmax_setter(number)
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end
end
