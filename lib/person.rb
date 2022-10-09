# your code goes here
class Person
    attr_reader :name   
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene 


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value >= 0 && value <= 10
            @happiness = value
        elsif value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        end
    end

    def hygiene=(value)
        if value >= 0 && value <= 10
            @hygiene = value
        elsif value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        end
    end

    def clean? 
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
       self.happiness += 2
       self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    
    def call_friend(friend)
        #friend_val= friend.happiness + 3
        #self_val = self.happiness + 3
        friend.happiness = friend.happiness + 3
        self.happiness = self.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)

        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end




end
